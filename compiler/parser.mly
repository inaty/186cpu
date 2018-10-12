%{
open Syntax
let newtype x = (x, Type.gentyp ())
let sp () = Parsing.symbol_start_pos ()
let ep () = Parsing.symbol_end_pos ()
%}

%token <bool> BOOL
%token <int> INT
%token <float> FLOAT
%token NOT
%token MINUS
%token PLUS
%token MINUS_DOT
%token PLUS_DOT
%token AST_DOT
%token SLASH_DOT
%token EQUAL
%token LESS_GREATER
%token LESS_EQUAL
%token GREATER_EQUAL
%token LESS
%token GREATER
%token IF
%token THEN
%token ELSE
%token <Id.t> IDENT
%token LET
%token IN
%token REC
%token COMMA
%token ARRAY_CREATE
%token DOT
%token LESS_MINUS
%token SEMICOLON
%token LPAREN
%token RPAREN
%token EOF

%nonassoc IN
%right prec_let
%right SEMICOLON
%right prec_if
%right LESS_MINUS
%nonassoc prec_tuple
%left COMMA
%left EQUAL LESS_GREATER LESS GREATER LESS_EQUAL GREATER_EQUAL
%left PLUS MINUS PLUS_DOT MINUS_DOT
%left AST_DOT SLASH_DOT
%right prec_unary_minus
%left prec_app
%left DOT

%type <Syntax.t> exp
%start exp

%%

simple_exp:
| LPAREN exp RPAREN
    { $2 }
| LPAREN RPAREN
    { (Unit, sp (), ep ()) }
| BOOL
    { (Bool($1), sp (), ep ()) }
| INT
    { (Int($1), sp (), ep ()) }
| FLOAT
    { (Float($1), sp (), ep ()) }
| IDENT
    { (Var($1), sp (), ep ()) }
| simple_exp DOT LPAREN exp RPAREN
    { (Get($1, $4), sp (), ep ()) }

exp:
| simple_exp
    { $1 }
| NOT exp
    %prec prec_app
    { (Not($2), sp (), ep ()) }
| MINUS exp
    %prec prec_unary_minus
    { match $2 with
    | (Float(f), _, _) -> (Float(-.f), sp (), ep ())
    | e -> (Neg(e), sp (), ep ()) }
| exp PLUS exp
    { (Add($1, $3), sp (), ep ()) }
| exp MINUS exp
    { (Sub($1, $3), sp (), ep ()) }
| exp EQUAL exp
    { (Eq($1, $3), sp (), ep ()) }
| exp LESS_GREATER exp
    { (Not(Eq($1, $3), sp(), ep ()), sp (), ep ()) }
| exp LESS exp
    { (Not(LE($3, $1), sp(), ep ()), sp (), ep ()) }
| exp GREATER exp
    { (Not(LE($1, $3), sp(), ep ()), sp (), ep ()) }
| exp LESS_EQUAL exp
    { (LE($1, $3), sp (), ep ()) }
| exp GREATER_EQUAL exp
    { (LE($3, $1), sp (), ep ()) }
| IF exp THEN exp ELSE exp
    %prec prec_if
    { (If($2, $4, $6), sp (), ep ()) }
| MINUS_DOT exp
    %prec prec_unary_minus
    { (FNeg($2), sp (), ep ()) }
| exp PLUS_DOT exp
    { (FAdd($1, $3), sp (), ep ()) }
| exp MINUS_DOT exp
    { (FSub($1, $3), sp (), ep ()) }
| exp AST_DOT exp
    { (FMul($1, $3), sp (), ep ()) }
| exp SLASH_DOT exp
    { (FDiv($1, $3), sp (), ep ()) }
| LET IDENT EQUAL exp IN exp
    %prec prec_let
    { (Let(newtype $2, $4, $6), sp (), ep ()) }
| LET REC fundef IN exp
    %prec prec_let
    { (LetRec($3, $5), sp (), ep ()) }
| simple_exp actual_args
    %prec prec_app
    { (App($1, $2), sp (), ep ()) }
| elems
    %prec prec_tuple
    { (Tuple($1), sp (), ep ()) }
| LET LPAREN pat RPAREN EQUAL exp IN exp
    { (LetTuple($3, $6, $8), sp (), ep ()) }
| simple_exp DOT LPAREN exp RPAREN LESS_MINUS exp
    { (Put($1, $4, $7), sp (), ep ()) }
| exp SEMICOLON exp
    { (Let((Id.gentmp Type.Unit, Type.Unit), $1, $3), sp (), ep ()) }
| ARRAY_CREATE simple_exp simple_exp
    %prec prec_app
    { (Array($2, $3), sp (), ep ()) }
| error
    { failwith
        (let sp = sp () in
         let ep = ep () in
         Printf.sprintf
           "parse error near line %d, characters %d-%d"
           sp.pos_lnum
           (sp.pos_cnum - sp.pos_bol)
           (ep.pos_cnum - ep.pos_bol)) }

fundef:
| IDENT formal_args EQUAL exp
    { { name = newtype $1; args = $2; body = $4 } }

formal_args:
| IDENT formal_args
    { newtype $1 :: $2 }
| IDENT
    { [newtype $1] }

actual_args:
| actual_args simple_exp
    %prec prec_app
    { $1 @ [$2] }
| simple_exp
    %prec prec_app
    { [$1] }

elems:
| elems COMMA exp
    { $1 @ [$3] }
| exp COMMA exp
    { [$1; $3] }

pat:
| pat COMMA IDENT
    { $1 @ [newtype $3] }
| IDENT COMMA IDENT
    { [newtype $1; newtype $3] }
