open Closure

(* a = (1, 2)
b = (a, 3)←こういうの *)

(* flattenとは
let a = <nested tuple>を
let a = <unnested tuple>に置き換えること

<nested tuple>になりうるexpはなにか
IfEq, IfLe, Let, MakeCls, LetTuple →bodyのtのexpが<nested tuple>なら
Var → idの指す先が<nested tuple>なら
AppCls, AppDir →返り値型が<nested tuple>なら
Tuple →　id listの指す先にtupleが入っていたなら
Get →　Id.tが<nested tuple>のarrayなら

<nested tuple>を指しうるidはどのように生まれるか
Let のright sideが<nested tuple exp>なら
MakeCls に渡されるidが<nested tuple id>なら
AppCls, AppDir に渡されるidが<nested tuple id>なら
LetTupleのidが<nested tuple id>を含むtuple idであるなら

となるので、<nested tuple>置き換えのためには、expに対して
IfEq, IfLe, Let, MakeCls, LetTuple →bodyのtのexpに対して置き換え
Var　→　idに対して置き換え
AppCls, AppDir（外部関数でない）　→　関数定義内部の返り値に対して置き換え
AppDir（外部関数）　→　一度値を受け取り、分解した上で再構成
Tuple → tupleを指すidは分解した上で再構成（idに対して置き換えが成功していれば1段階でよい）
Get(内部array)　→　定義とputのidを置き換え
Get(外部array)　→　一度受け取り、分解して再構成

id生成に対して
Let のright sideがexp→消える
MakeCls →　渡すidを置き換えているのでよい
AppCls, AppDir →　渡すidを置き換えているのでよい
LetTuple　→　渡すidを置き換えているのでよい

消去の影響、<nested tuple>を指すidが使われうる場所を考える
VarがあるのでIdだけでなく任意のtを考える必要がある
Let → tがnestedだったらTypeを書き換える必要がある（単独でできそう）
MakeCls →　置き換えられたidが渡されるので関数定義が修正されている必要がある
あとclsの型も置き換える必要がある
AppCls, AppDir(内部関数)　→　渡すidを置き換えているので関数定義が修正されている必要がある
AppDir(array_create) →　渡すidを置き換えているのでよい
AppDir（外部関数）（array_create以外）　→　これは対応しきれないので、元のnested tupleを持っておいて渡す必要がある。
LetTuple →　型リストの中にtupleがあると修正する必要がある
別変数でどかどか受け取っておいて、かつtの前に変数を入れる必要がある
配列　→　getやputはvirtual.mlの中で型が判断され処理されているので、その型判断の基となるlet部分とか関数適用とかの型がちゃんと全部修正されていれば問題なさそう、ただし外部配列は要対処
関数定義　→　nameとargsとformal_fvの型、およびbodyの中身を修正する必要がある *)


(* 型を全部持っておく *)
let types = ref M.empty

let rec type_flatten t =
  match t with
  | Type.Fun(arg_ts, body_t) ->
      Type.Fun(List.map type_flatten arg_ts, type_flatten body_t)
  | Type.Tuple(tlist) ->
      let rec sub tlist =
        match tlist with
        | t :: tlist ->
            let t = type_flatten t in
            begin match t with
            (* ここで入れ子解除 *)
            | Type.Tuple(tuple_tlist) -> tuple_tlist @ sub tlist
            | _ -> t :: sub tlist
            end
        | [] -> [] in
      Type.Tuple(sub tlist)
  | Type.Array(t) -> Type.Array(type_flatten t)
  | Type.Var(tref) ->
      begin match !tref with
      | Some(t) -> (tref := Some(type_flatten t); Type.Var(tref))
      | None -> failwith "type_flatten"
      end
  | Type.Toplevel(tref) -> (tref := type_flatten !tref; Type.Toplevel(tref))
  | _ -> t

let rec closure_t_flatten (exp, sp) =
  let exp =
    match exp with
    | IfEq(x, y, closure_t1, closure_t2) ->
        (* x, yはtupleにはなりえないので何もしない *)
        IfEq(x, y, closure_t_flatten closure_t1, closure_t_flatten closure_t2)
    | IfLE(x, y, closure_t1, closure_t2) ->
        IfLE(x, y, closure_t_flatten closure_t1, closure_t_flatten closure_t2)
    | Let((x, t), r_closure_t, body_closure_t) ->
        let t = type_flatten t in
        let r_closure_t = closure_t_flatten r_closure_t in
        (types := M.add x t !types;
        let body_closure_t = closure_t_flatten body_closure_t in
        Let((x, t), r_closure_t, body_closure_t))
    | MakeCls((f, t), {entry = l; actual_fv = fvs;}, body_closure_t) ->
        let t = type_flatten t in
        (types := M.add f t !types;
        let body_closure_t = closure_t_flatten body_closure_t in
        MakeCls((f, t), {entry = l; actual_fv = fvs;}, body_closure_t))
    | LetTuple(xt_list, rx, body_closure_t) ->
        let insert : ((Id.t * Type.t) * ((Id.t * Type.t) list)) list ref
          = ref [] in
        let rec sub xt_list =
          begin match xt_list with
          | (x, t) :: xt_list ->
              let split_xt_list : (Id.t * Type.t) list ref = ref [] in
              begin match t with
              | Type.Tuple(tuple_tlist) ->
                  (* この内側タプルの中にはもうタプルはないはず *)
                  (let declare_split_x t =
                    let split_x = Id.genid (x ^ "_split") in
                    split_xt_list := (split_x, t) :: !split_xt_list in
                  List.iter declare_split_x tuple_tlist;
                  split_xt_list := List.rev !split_xt_list;
                  insert := ((x, t), !split_xt_list) :: !insert;
                  !split_xt_list @ sub xt_list)
              | _ -> (x, t) :: sub xt_list
              end
          | [] -> []
          end in
        let xt_list = sub xt_list in
        (types := M.add_list xt_list !types;
        insert := List.rev !insert;
        let rec sub2 insert =
          begin match insert with
          | ((ins_x, ins_t), ins_r_xt_list) :: insert ->
              let ins_rx_list = List.map fst ins_r_xt_list in
              (Let((ins_x, ins_t), (Tuple(ins_rx_list), sp),
                   sub2 insert),
              sp)
          | [] -> closure_t_flatten body_closure_t
          end in
        let body_closure_t = sub2 !insert in
        LetTuple(xt_list, rx, body_closure_t))
    | Tuple(xlist) ->
        let insert = ref [] in
        let rec sub xlist =
          begin match xlist with
          | x :: xlist ->
              let t = M.find x !types in
              let split_x_list = ref [] in
              begin match t with
              | Type.Tuple(tuple_tlist) ->
                  (* この内側タプルの中にはもうタプルはないはず *)
                  (let declare_split_x t =
                    (let split_x = Id.genid (x ^ "_split") in
                    types := M.add split_x t !types;
                    split_x_list := split_x :: !split_x_list) in
                  List.iter declare_split_x tuple_tlist;
                  split_x_list := List.rev !split_x_list;
                  insert := (!split_x_list, x) :: !insert;
                  !split_x_list @ sub xlist)
              | _ -> x :: sub xlist
              end
          | [] -> []
          end in
        let xlist = sub xlist in
        (insert := List.rev !insert;
        let rec sub2 insert =
          begin match insert with
          | (split_x_list, x) :: insert ->
              let xt_list =
                List.map (fun x -> (x, M.find x !types)) split_x_list in
              (LetTuple(xt_list, x, sub2 insert), sp)
          | [] -> (Tuple(xlist), sp)
          end in
        let (exp, _) = sub2 !insert in
        exp)
    (* 本来は外部関数であるかどうかを調べ、そうであれば元のnested タプルを復元して渡す/受け取ったnested tupleを分解してunnestedにして返り値扱いする という処理が必要であるが、今回は省略した。 *)
    | AppDir(Id.L(x), args) -> AppDir(Id.L(x), args)
    (* 本来はaが外部配列であるかどうかを調べ、外部配列であればバラすという処理が必要であるが、今回は省略した。 *)
    | Get(a, i) -> Get(a, i)
    (* 本来はaが外部配列であればxを組み上げる処理が必要であるが、今回は省略した。 *)
    | Put(a, i, x) -> Put(a, i, x)
    | _ -> exp in
  (exp, sp)

let xtlist_flatten_lite xtlist =
  List.map (fun (x, t) -> (x, type_flatten t)) xtlist

let rec fundef_flatten {name = (f, t); args = argxt_list;
                        formal_fv = fvxt_list; body = body_closure_t} =
  let t = type_flatten t in
  let argxt_list = xtlist_flatten_lite argxt_list in
  let fvxt_list = xtlist_flatten_lite fvxt_list in
  (types := M.add_list (argxt_list @ fvxt_list) !types;
  let body_closure_t = closure_t_flatten body_closure_t in
  {name = (f, t); args = argxt_list;
   formal_fv = fvxt_list; body = body_closure_t})

let f prog =
  match prog with
  | Prog(fundefs, closure_t) ->
      Prog(List.map fundef_flatten fundefs, closure_t_flatten closure_t)
