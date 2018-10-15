(* translation into RISC-V assembly with infinite number of virtual registers *)

open Asm

(* SPARCでは即値にfloatを使えないので、tableを作っておいてメモリに配置する *)
let float_table = ref []

(* 自由変数と型のリスト(xts)を左から見ていき、型に応じた処理をする。 *)
(* Type.Unitだったら何もしない、Type.Floatだったらaddf、それ以外だったらaddi *)
(* unitでもfloatでもなかったら[intに限定される|その他も包摂してaddi]（わからん） *)
let classify xts ini addf addi =
  (* List.fold_left f a [b1; ...; bn] = f (... (f (f a b1) b2) ...) bn *)
  List.fold_left
    (* accという名前の意味が分からないのでintlist_floatlistに名前変更 *)
    (fun intlist_floatlist (x, t) ->
      match t with
      | Type.Unit -> intlist_floatlist
      | Type.Float -> addf intlist_floatlist x
      | _ -> addi intlist_floatlist x t)
    ini
    xts

(* 自由変数と型のリスト(xts)→(intな変数名のリスト, floatな変数名のリスト) *)
let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

(* 自由変数と型のリスト(xts)を左から見ていき、 *)
(* offsetを[8(Type.Float)|4(その他)]増やしながら[addf|addi]を適用していく *)
let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
      let offset = align offset in
      (offset + 8, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + 4, addi x t offset acc))

(* 「式(Closure.t)→命令列(Asm.t)」な関数を返す。 *)
let rec g env (exp, sp) =
  match exp with
  | Closure.Unit -> Ans(Nop, sp)
  | Closure.Int(i) -> Ans(Set(i), sp)
  (* float即値はラベルを通じてメモリ内の表から引き出すという方法で無理やり実現 *)
  | Closure.Float(d) ->
      let l =
        try
          let (l, _) = List.find (fun (_, d') -> d = d') !float_table in
          l
        with Not_found ->
          let l = Id.L(Id.genid "l") in
          float_table := (l, d) :: !float_table;
          l in
      let x = Id.genid "l" in
      Let((x, Type.Int), (SetL(l), sp), Ans(LdDF(x, C(0)), sp))
  | Closure.Neg(x) -> Ans(Neg(x), sp)
  | Closure.Add(x, y) -> Ans(Add(x, V(y)), sp)
  | Closure.Sub(x, y) -> Ans(Sub(x, V(y)), sp)
  | Closure.Mul(x, y) -> Ans(Mul(x, y), sp)
  | Closure.Div(x, y) -> Ans(Div(x, y), sp)
  | Closure.FNeg(x) -> Ans(FNegD(x), sp)
  | Closure.FAdd(x, y) -> Ans(FAddD(x, y), sp)
  | Closure.FSub(x, y) -> Ans(FSubD(x, y), sp)
  | Closure.FMul(x, y) -> Ans(FMulD(x, y), sp)
  | Closure.FDiv(x, y) -> Ans(FDivD(x, y), sp)
  (* id_or_imm->Id.t *)
  | Closure.IfEq(x, y, e1, e2) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfEq(x, y, g env e1, g env e2), sp)
      | Type.Float -> Ans(IfFEq(x, y, g env e1, g env e2), sp)
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfLE(x, y, e1, e2) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfLE(x, y, g env e1, g env e2), sp)
      | Type.Float -> Ans(IfFLE(x, y, g env e1, g env e2), sp)
      | _ -> failwith "inequality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1, e2) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2'
  | Closure.Var(x) ->
      (match M.find x env with
      | Type.Unit -> Ans(Nop, sp)
      | Type.Float -> Ans(FMovD(x), sp)
      | _ -> Ans(Mov(x), sp))
  | Closure.MakeCls((x, t),
                    { Closure.entry = l; Closure.actual_fv = ys },
                    e2) ->
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
        expand
          (List.map (fun y -> (y, M.find y env)) ys)
          (4, e2')
          (fun y offset store_fv ->
             seq ((StDF(y, x, C(offset)), sp), store_fv))
          (fun y _ offset store_fv ->
             seq ((St(y, x, C(offset)), sp), store_fv)) in
      Let((x, t), (Mov(reg_hp), sp),
          Let((reg_hp, Type.Int), (Add(reg_hp, C(align offset)), sp),
              let z = Id.genid "l" in
              Let((z, Type.Int), (SetL(l), sp),
                  seq((St(z, x, C(0)), sp),
                      store_fv))))
  | Closure.AppCls(x, ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, int, float), sp)
  | Closure.AppDir(Id.L(x), ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallDir(Id.L(x), int, float), sp)
  | Closure.Tuple(xs) -> (* �Ȥ����� (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
        expand
          (List.map (fun x -> (x, M.find x env)) xs)
          (0, Ans(Mov(y), sp))
          (fun x offset store -> seq((StDF(x, y, C(offset)), sp), store))
          (fun x _ offset store -> seq((St(x, y, C(offset)), sp), store)) in
      Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)),
          (Mov(reg_hp), sp),
          Let((reg_hp, Type.Int),
              (Add(reg_hp, C(align offset)), sp),
              store))
  | Closure.LetTuple(xts, y, e2) ->
      let s = Closure.fv e2 in
      let (offset, load) =
        expand
          xts
          (0, g (M.add_list xts env) e2)
          (fun x offset load ->
            if not (S.mem x s) then load else
            fletd(x, (LdDF(y, C(offset)), sp), load))
          (fun x t offset load ->
            if not (S.mem x s) then load else
            Let((x, t), (Ld(y, C(offset)), sp), load)) in
      load
  | Closure.Get(x, y) ->
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop, sp)
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int),
              (SLL(y, C(3)), sp),
              Ans(LdDF(x, V(offset)), sp))
      | Type.Array(_) ->
          Let((offset, Type.Int),
              (SLL(y, C(2)), sp),
              Ans(Ld(x, V(offset)), sp))
      | _ -> assert false)
  | Closure.Put(x, y, z) ->
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop, sp)
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int),
              (SLL(y, C(3)), sp),
              Ans(StDF(z, x, V(offset)), sp))
      | Type.Array(_) ->
          Let((offset, Type.Int),
              (SLL(y, C(2)), sp),
              Ans(St(z, x, V(offset)), sp))
      | _ -> assert false)
  | Closure.ExtArray(Id.L(x)) -> Ans(SetL(Id.L("min_caml_" ^ x)), sp)

(* 関数(Closure.fundefs) -> 仮想マシンコード *)
let h { Closure.name = (Id.L(x), t);
        Closure.args = yts;
        Closure.formal_fv = zts;
        Closure.body = e } =
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load ->
        fletd(z, (LdDF(x, C(offset)), Lexing.dummy_pos), load))
      (fun z t offset load ->
        Let((z, t), (Ld(x, C(offset)), Lexing.dummy_pos), load)) in
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* プログラム→仮想マシンコード *)
let f (Closure.Prog(fundefs, e)) =
  float_table := [];
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  Prog(!float_table, fundefs, e)
