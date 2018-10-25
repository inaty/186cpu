open Closure

(*
let rec f x = x + a
in f 10

↓

f x a = x + a
---
f 10 a

という変換を実現したい

手順
fbodyのfvリストを作り、(f, fvs)を持っておく、順番は固定する
そのスコープ下でfに出会ったらfvsをそのまま追加して渡せばよい
*)

let fundefs = ref []

(* f_fvsは関数と自由変数（＝リフティングで増えた引数）の組で、
関数適用の際に増えた引数を渡すために使う。
x_tは今まで定義された変数と型の組で、諸々の型処理に必要。 *)
let rec lambda_lifting (exp, sp) f_fvs x_t =
  let sp' = ref sp in
  let exp =
    match exp with
    | KNormal.Unit -> Unit
    | KNormal.Int(i) -> Int(i)
    | KNormal.Float(d) -> Float(d)
    | KNormal.Neg(x) -> Neg(x)
    | KNormal.Add(x, y) -> Add(x, y)
    | KNormal.Sub(x, y) -> Sub(x, y)
    | KNormal.Mul(x, y) -> Mul(x, y)
    | KNormal.Div(x, y) -> Div(x, y)
    | KNormal.FNeg(x) -> FNeg(x)
    | KNormal.FAdd(x, y) -> FAdd(x, y)
    | KNormal.FSub(x, y) -> FSub(x, y)
    | KNormal.FMul(x, y) -> FMul(x, y)
    | KNormal.FDiv(x, y) -> FDiv(x, y)
    | KNormal.IfEq(x, y, knorm1, knorm2) ->
        IfEq(x, y,
             lambda_lifting knorm1 f_fvs x_t,
             lambda_lifting knorm2 f_fvs x_t)
    | KNormal.IfLE(x, y, knorm1, knorm2) ->
        IfLE(x, y,
             lambda_lifting knorm1 f_fvs x_t,
             lambda_lifting knorm2 f_fvs x_t)
    | KNormal.Let((x, Type.Fun(args, t)), knorm1, knorm2) ->
        (* 関数である変数xが宣言されたので、
        knorm2のリフティングの際はf_fvsとx_tを拡張して渡す *)
        Let((x, Type.Fun(args, t)),
            lambda_lifting knorm1 f_fvs x_t,
            lambda_lifting
              knorm2
                (M.add
                  x
                  (try M.find x f_fvs with Not_found -> failwith x)
                  f_fvs)
                (M.add x t x_t))
    | KNormal.Let((x, t), knorm1, knorm2) ->
        (* 変数xが宣言されたので、knorm2のリフティングの際はx_tを拡張して渡す *)
        Let((x, t),
            lambda_lifting knorm1 f_fvs x_t,
            lambda_lifting knorm2 f_fvs (M.add x t x_t))
    | KNormal.Var(x) -> Var(x)
    | KNormal.LetRec ({KNormal.name = (f, Type.Fun(arg_ts, ret_t));
                       KNormal.args = args;
                       KNormal.body = fknorm}, knorm) ->
        (* 関数定義右辺の自由変数をリストアップ。 *)
        (* 出現してかつ引数でないものが自由変数だが、fは除く。 *)
        let fvs = S.elements (S.diff
                                (KNormal.fv fknorm)
                                (S.of_list (f :: (List.map fst args)))) in
        (* 自由変数は今までに定義されているはずなので型を取得 *)
        let fv_ts =
          List.map
            (fun x -> try M.find x x_t with Not_found -> failwith x) fvs in
        (* リフティングのため増やす引数を関数型に反映 *)
        let ft = Type.Fun(arg_ts @ fv_ts, ret_t) in
        let f_fvs = M.add f fvs f_fvs in
        let x_t = M.add f ft x_t in
        Printf.eprintf "hoge\n";
        (* 引数の増えたバージョンの関数をグローバルに移動 *)
        let fd = {name = (Id.L(f), ft);
                  args = args @ (List.combine fvs fv_ts);
                  formal_fv = [];
                  body = lambda_lifting fknorm f_fvs (M.add_list args x_t)} in
        Printf.eprintf "poge\n";
        fundefs := fd :: !fundefs;
        let (exp, sp) = lambda_lifting knorm f_fvs x_t in
        sp' := sp;
        exp
    | KNormal.LetRec(_) -> failwith "invalid letrec"
    | KNormal.App(f, args) ->
        Printf.eprintf "%s\n" f;
        assert (M.mem f f_fvs);
        AppDir(Id.L(f), args @ (M.find f f_fvs))
    | KNormal.Tuple(xs) -> Tuple(xs)
    | KNormal.LetTuple(xt_list, rx, knorm) ->
        let x_t = M.add_list xt_list x_t in
        LetTuple(xt_list, rx, lambda_lifting knorm f_fvs x_t)
    | KNormal.Get(x, y) -> Get(x, y)
    | KNormal.Put(x, y, z) -> Put(x, y, z)
    | KNormal.ExtArray(x) -> failwith "unsupported"
    | KNormal.ExtFunApp(f, args) -> AppDir(Id.L("min_caml_" ^ f), args) in
  (exp, !sp')

let rec f knorm =
  fundefs := [];
  let ll = lambda_lifting (knorm) M.empty M.empty in
  Prog(List.rev !fundefs, ll)
