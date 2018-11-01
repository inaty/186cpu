(* やりたいこと
不要タプル定義の削除
let a = (1, 2) in ... でaがそのまま使われない場合は削除
「タプルをそのまま使う必要のある場面」を考える、素朴にやると
IfEq, IfLEの返り値
Letのbody
LetTupleのbody
MakeClsのbody
関数の返り値
↑仕方なさそう　↓なんとかなりそう
MakeClsでの自由変数
AppCls, AppDirの引数
LetTupleの右辺
Putで与える値
などは必要がある、よってまずこれに使われないタプルは消していい

これと、スライドの最適化「関数呼出しの引数になっているとき、バラして渡す」を組み合わせる。
すると、引数としてのみ使われるタプルも消してよくなる。
また、関数内部で行っている「タプルを分解する処理」が消える。（タプルを作りたい場合、適宜組み合わせることになる。
とりあえずここまでを実装してみたい。

順序としては引数の分解をしてから不要定義削除をするとこれを実現できそう。 *)

open Closure

let types = ref M.empty

let rec funtype_split t =
  match t with
  | Type.Fun(argt_list, bodyt) ->
      let rec args_split argt_list =
        match argt_list with
        | t :: argt_list ->
            begin match t with
            | Type.Tuple(tlist) ->
                List.map funtype_split tlist @ args_split argt_list
            | _ -> funtype_split t :: args_split argt_list
            end
        | [] -> [] in
      Type.Fun(args_split argt_list, funtype_split bodyt)
  | Type.Tuple(tlist) -> Type.Tuple(List.map funtype_split tlist)
  | _ -> t

let rec tlist_xlist_split tlist xlist insert =
  match tlist, xlist with
  | t :: tlist, x :: xlist ->
      begin match t with
      | Type.Tuple(tuple_tlist) ->
          let newx_list
            = Id.genid_n (x ^ "_split") (List.length tuple_tlist) in
          let insert = (List.combine newx_list tuple_tlist, x) :: insert in
          let tlist, xlist, insert = tlist_xlist_split tlist xlist insert in
          (tuple_tlist @ tlist), (newx_list @ xlist), insert
      | _ ->
          let tlist, xlist, insert  = tlist_xlist_split tlist xlist insert in
          (t :: tlist), (x :: xlist), insert
      end
  | [], [] -> [], [], List.rev insert
  | _ -> failwith "split"

let types_from_xt_list xt_list =
  List.iter (fun (x, t) -> types := M.add x t !types) xt_list

let rec split_argtuple (exp, sp) =
  let exp =
    match exp with
    | MakeCls((f, t), {entry = l; actual_fv = fv_list}, body_closure_t) ->
        let argt_list, bodyt =
          begin match t with
          | Type.Fun(argt_list, bodyt) -> argt_list, funtype_split bodyt
          | _ -> failwith "split_argtuple"
          end in
        let argt_list, fv_list, insert =
          tlist_xlist_split argt_list fv_list []  in
        let t = Type.Fun(argt_list, bodyt) in
        types := M.add f t !types;
        let rec lettuple_insert insert =
          match insert with
          | (xt_list, x) :: insert ->
              types_from_xt_list xt_list;
              (LetTuple(xt_list, x, lettuple_insert insert), sp)
          | [] ->
              (MakeCls((f, t), {entry = l; actual_fv = fv_list},
                       split_argtuple body_closure_t),
              sp) in
        let (exp, _) = lettuple_insert insert in
        exp
    | AppCls(f, xlist) ->
        let _, xlist, insert =
          tlist_xlist_split
            (List.map (fun x -> M.find x !types) xlist) xlist [] in
        let rec lettuple_insert insert =
          match insert with
          | (xt_list, x) :: insert ->
              types_from_xt_list xt_list;
              (LetTuple(xt_list, x, lettuple_insert insert), sp)
          | [] -> (AppCls(f, xlist), sp) in
        let (exp, _) = lettuple_insert insert in
        exp
    | AppDir(l, xlist) ->
        let _, xlist, insert =
          tlist_xlist_split
            (List.map (fun x -> M.find x !types) xlist) xlist [] in
        let rec lettuple_insert insert =
          match insert with
          | (xt_list, x) :: insert ->
              types_from_xt_list xt_list;
              (LetTuple(xt_list, x, lettuple_insert insert), sp)
          | [] -> (AppDir(l, xlist), sp) in
        let (exp, _) = lettuple_insert insert in
        exp
    | Let((x, t), r_closure_t, body_closure_t) ->
        let t = funtype_split t in
        types := M.add x t !types;
        let r_closure_t = split_argtuple r_closure_t in
        let body_closure_t = split_argtuple body_closure_t in
        Let((x, t), r_closure_t, body_closure_t)
    | LetTuple(xt_list, rx, body_closure_t) ->
        let xt_list = List.map (fun (x, t) -> (x, funtype_split t)) xt_list in
        types_from_xt_list xt_list;
        LetTuple(xt_list, rx, split_argtuple body_closure_t)
    | _ -> exp in
  (exp, sp)

let split_argtuple_fundef {name = (l, t); args = argxt_list;
                           formal_fv = fvxt_list; body = (exp, sp)} =
  let t = funtype_split t in
  let f (x, t) = (x, funtype_split t) in
  let argxlist, argtlist = List.split argxt_list in
  let argtlist, argxlist, insert = tlist_xlist_split argtlist argxlist [] in
  let argxt_list = List.combine argxlist argtlist in
  types_from_xt_list argxt_list;
  let fvxlist, fvtlist = List.split fvxt_list in
  let fvtlist, fvxlist, insert2 = tlist_xlist_split fvtlist fvxlist [] in
  let fvxt_list = List.combine fvxlist fvtlist in
  types_from_xt_list fvxt_list;
  let insert = insert @ insert2 in
  let body_closure_t =
    let rec let_insert insert =
      match insert with
      | (xt_list, x) :: insert ->
          let xlist, tlist = List.split xt_list in
          let t = Type.Tuple(tlist) in
          types := M.add x t !types;
          (Let((x, t), (Tuple(xlist), sp), let_insert insert), sp)
      | [] -> split_argtuple (exp, sp) in
    let_insert insert in
  {name = (l, t); args = argxt_list;
  formal_fv = fvxt_list; body = body_closure_t}

let f prog =
  match prog with
  | Prog(fundefs, body_closure_t) ->
      Prog(List.map split_argtuple_fundef fundefs,
           split_argtuple body_closure_t)
