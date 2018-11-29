open Asm

(* 即値にfloatを使えないので、tableを作っておいてメモリに配置する *)
let float_table = ref []

(* floatとintで分けて何か処理したい時に使う関数 *)
let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
      match t with
      | Type.Unit -> acc
      | Type.Float -> addf acc x
      | _ -> addi acc x t)
    ini
    xts

(* ixsとfxsを得る、型は捨てる *)
let separate xts =
  classify
    xts
    ([], [])
    (fun (ixs, fxs) x -> (ixs, fxs @ [x]))
    (fun (ixs, fxs) x _ -> (ixs @ [x], fxs))

(* offsetを増やしながらclassifyする *)
(* TODO:アドレシングを変えるならここは直す必要がある *)
let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x -> (offset + 4, addf x offset acc))
    (fun (offset, acc) x t -> (offset + 4, addi x t offset acc))

(* envは型環境 *)
let rec g env = function
  | Closure.Unit(p) -> Ans(Nop(p))
  | Closure.Int(i, p) -> Ans(Li(i, p))
  | Closure.Float(f, p) ->
      let l =
        try
          let (l, _) = List.find (fun (_, f') -> f = f') !float_table in
          l
        with Not_found ->
          let l = Id.L(Id.genid "l") in
          float_table := (l, f) :: !float_table;
          l in
      let x = Id.genid "l" in
      (* TODO:短くする余地あり、0付近に固めるなど *)
      Let((x, Type.Int), LiL(l, p), Ans(FLw(x, C(0), p)))
  | Closure.Neg(x, p) -> Ans(Neg(x, p))
  | Closure.Add(x, y, p) -> Ans(Add(x, V(y), p))
  | Closure.Sub(x, y, p) -> Ans(Sub(x, V(y), p))
  | Closure.Mul(x, y, p) -> Ans(Mul(x, V(y), p))
  | Closure.Div(x, y, p) -> Ans(Div(x, V(y), p))
  | Closure.FNeg(x, p) -> Ans(FNeg(x, p))
  | Closure.FAdd(x, y, p) -> Ans(FAdd(x, y, p))
  | Closure.FSub(x, y, p) -> Ans(FSub(x, y, p))
  | Closure.FMul(x, y, p) -> Ans(FMul(x, y, p))
  | Closure.FDiv(x, y, p) -> Ans(FDiv(x, y, p))
  | Closure.IfEq(x, y, e1, e2, p) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfEq(x, y, g env e1, g env e2, p))
      | Type.Float -> Ans(IfFEq(x, y, g env e1, g env e2, p))
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfLE(x, y, e1, e2, p) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfLE(x, y, g env e1, g env e2, p))
      | Type.Float -> Ans(IfFLE(x, y, g env e1, g env e2, p))
      | _ -> failwith "inequality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1, e2, p) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2'
  | Closure.Var(x, p) ->
      (match M.find x env with
      | Type.Unit -> Ans(Nop(p))
      | Type.Float -> Ans(FMv(x, p))
      | _ -> Ans(Mv(x, p)))
  | Closure.MakeCls((x, t), { Closure.entry = l; Closure.actual_fv = ys },
                    e2, p) ->
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
        expand
          (List.map (fun y -> (y, M.find y env)) ys)
          (4, e2')
          (fun y offset store_fv ->
            seq (FSw(x, y, C(offset), p), store_fv))
          (fun y _ offset store_fv ->
             seq (Sw(x, y, C(offset), p), store_fv)) in
      Let((x, t), Mv(reg_hp, p),
          Let((reg_hp, Type.Int), Add(reg_hp, C(offset), p),
              let z = Id.genid "l" in
              Let((z, Type.Int), LiL(l, p),
                  seq(Sw(x, z, C(0), p), store_fv))))
  | Closure.AppCls(x, ys, p) ->
      let (ixs, fxs) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, ixs, fxs, p))
  | Closure.AppDir(Id.L(x), ys, p) ->
      let (ixs, fxs) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallDir(Id.L(x), ixs, fxs, p))
  | Closure.Tuple(xs, p) ->
      let y = Id.genid "t" in
      let (offset, store) =
        expand
          (List.map (fun x -> (x, M.find x env)) xs)
          (0, Ans(Mv(y, p)))
          (fun x offset store -> seq(FSw(y, x, C(offset), p), store))
          (fun x _ offset store -> seq(Sw(y, x, C(offset), p), store)) in
      Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mv(reg_hp, p),
          Let((reg_hp, Type.Int), Add(reg_hp, C(offset), p),
              store))
  | Closure.LetTuple(xts, y, e2, p) ->
      let s = Closure.fv e2 in
      let (offset, load) =
        expand
          xts
          (0, g (M.add_list xts env) e2)
          (fun x offset load ->
            if not (S.mem x s) then load else (* いらない要素は定義しない *)
            fletd(x, FLw(y, C(offset), p), load))
          (fun x t offset load ->
            if not (S.mem x s) then load else
            Let((x, t), Lw(y, C(offset), p), load)) in
      load
  | Closure.Get(x, y, p) ->
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop(p))
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int), SLL(y, C(2), p),
              Ans(FLw(x, V(offset), p)))
      | Type.Array(_) ->
          Let((offset, Type.Int), SLL(y, C(2), p),
              Ans(Lw(x, V(offset), p)))
      | _ -> failwith "virtual.g")
  | Closure.Put(x, y, z, p) -> (* x.(y) <- z *)
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop(p))
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int), SLL(y, C(2), p),
              Ans(FSw(x, z, V(offset), p)))
      | Type.Array(_) ->
          Let((offset, Type.Int), SLL(y, C(2), p),
              Ans(Sw(x, z, V(offset), p)))
      | _ -> failwith "virtual.g")
  | Closure.ExtArray(Id.L(x), p) -> Ans(LiL(Id.L("min_caml_" ^ x), p))

(* 関数(Closure.fundefs) -> 仮想マシンコード *)
let h { Closure.name = (Id.L(x), t);
        Closure.args = yts;
        Closure.formal_fv = zts;
        Closure.body = e } =
  let (ixs, fxs) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load ->
        fletd(z, FLw(x, C(offset), Asm.dp), load))
      (fun z t offset load ->
        Let((z, t), Lw(x, C(offset), Asm.dp), load)) in
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = ixs; fargs = fxs; body = load; ret = t2 }
  | _ -> failwith "virtual.h"

(* プログラム→仮想マシンコード *)
let f (Closure.Prog(fundefs, e)) =
  float_table := [];
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  Prog(!float_table, fundefs, e)
