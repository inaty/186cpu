open KNormal

let simple_exp exp =
  match exp with
  | Unit | Int(_) | Float(_) | Neg(_) | Add(_) | Sub(_) | Mul(_) | Div(_)
  | FNeg(_) | FAdd(_) | FSub(_) | FMul(_) | FDiv(_) -> true
  | _ -> false

let simple_exp_equal exp1 exp2 =
  match exp1, exp2 with
  | Unit, Unit -> true
  | Int(i1), Int(i2) -> i1 = i2
  | Float(f1), Float(f2) -> f1 = f2
  | Neg(x1), Neg(x2) | FNeg(x1), FNeg(x2) -> x1 = x2
  | Add(x1, y1), Add(x2, y2) | Sub(x1, y1), Sub(x2, y2)
  | Mul(x1, y1), Mul(x2, y2) | Div(x1, y1), Div(x2, y2)
  | FAdd(x1, y1), FAdd(x2, y2) | FSub(x1, y1), FSub(x2, y2)
  | FMul(x1, y1), FMul(x2, y2) | FDiv(x1, y1), FDiv(x2, y2)
      -> x1 = x2 && y1 = y2
  | _ -> false

(* kNormal.t -> kNormal.t、α変換済みを仮定 *)
(* 仕事は2つあり、
「let x = a + b inのa+bが既出だった場合などに、letそのものを取り除く」
「↑で取り除かれたxが以降の式にでてきた場合、それを置き換える」 *)
(* 取り除ける式はsimple_expに限定してある *)
let rec cse (exp, sp) defined mapping =
  let replace x = if M.mem x mapping then M.find x mapping else x in
  let sp = ref sp in
  let exp =
    match exp with
    | Unit | Int(_) | Float(_) -> exp
    | Neg(x) -> Neg(replace x)
    | Add(x, y) -> Add(replace x, replace y)
    | Sub(x, y) -> Sub(replace x, replace y)
    | Mul(x, y) -> Mul(replace x, replace y)
    | Div(x, y) -> Div(replace x, replace y)
    | FNeg(x) -> FNeg(replace x)
    | FAdd(x, y) -> FAdd(replace x, replace y)
    | FSub(x, y) -> FSub(replace x, replace y)
    | FMul(x, y) -> FMul(replace x, replace y)
    | FDiv(x, y) -> FDiv(replace x, replace y)
    | IfEq(x, y, (exp1, sp1), (exp2, sp2)) ->
        IfEq(replace x, replace y,
             cse (exp1, sp1) defined mapping, cse (exp2, sp2) defined mapping)
    | IfLE(x, y, (exp1, sp1), (exp2, sp2)) ->
        IfLE(replace x, replace y,
             cse (exp1, sp1) defined mapping, cse (exp2, sp2) defined mapping)
    | Let((x, t), (exp1, sp1), (exp2, sp2)) ->
        let (exp1, sp1) = cse (exp1, sp1) defined mapping in
        if simple_exp exp1 then
          let equal_to_exp1 (x, exp) = simple_exp_equal exp exp1 in
          (if List.exists equal_to_exp1 defined then
            let (dx, dexp) = List.find equal_to_exp1 defined in
            let (exp, sp') = cse (exp2, sp2) defined (M.add x dx mapping) in
            sp := sp';
            exp
          else
            Let((x, t), (exp1, sp1),
                (cse (exp2, sp2) ((x, exp1) :: defined) mapping)))
        else
          Let((x, t), (exp1, sp1), cse (exp2, sp2) defined mapping)
    | Var(x) -> Var(replace x)
    (* TODO:ここは関数定義で引っ張ってきた引数を定義済みということにするのがなかなか難しい *)
    (* ひとまずガン無視する *)
    | LetRec({name = name; args = args; body = (exp1, sp1)}, (exp2, sp2)) ->
        let (exp1, sp1) = cse (exp1, sp1) defined mapping in
        let (exp2, sp2) = cse (exp2, sp2) defined mapping in
        LetRec({name = name; args = args; body = (exp1, sp1)}, (exp2, sp2))
    | App(f, args) ->
        (* fは関数であり共通部分式削除の対象外なので大丈夫なはず *)
        App(f, List.map replace args)
    | Tuple(vars) -> Tuple(List.map replace vars)
    | LetTuple(var_type_tuples, right_side, (exp, sp)) ->
        let right_side = replace right_side in
        let (exp, sp) = cse (exp, sp) defined mapping in
        LetTuple(var_type_tuples, right_side, (exp, sp))
    | Get(a, i) -> Get(a, replace i)
    | Put(a, i, x) -> Put(a, replace i, replace x)
    | ExtArray(_) -> exp
    | ExtFunApp(f, args) -> ExtFunApp(f, List.map replace args) in
  (exp, !sp)

let f (exp, sp) = cse (exp, sp) [] M.empty
