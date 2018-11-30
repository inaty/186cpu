{
open Parser
open Type
}

let space = [' ' '\t']
let digit = ['0'-'9']
let lower = ['a'-'z']
let upper = ['A'-'Z']

rule token = parse
| "\n\r" | '\n' | '\r'
    { Lexing.new_line lexbuf; token lexbuf }
| space+
    { token lexbuf }
| "(*"
    { comment lexbuf; token lexbuf }
| '('
    { LPAREN }
| ')'
    { RPAREN }
| "true"
    { BOOL(true) }
| "false"
    { BOOL(false) }
| "not"
    { NOT }
| digit+
    { INT(int_of_string (Lexing.lexeme lexbuf)) }
| digit+ ('.' digit*)? (['e' 'E'] ['+' '-']? digit+)?
    { FLOAT(float_of_string (Lexing.lexeme lexbuf)) }
| '-'
    { MINUS }
| '+'
    { PLUS }
| '*'
    { AST }
| '/'
    { SLASH }
| "-."
    { MINUS_DOT }
| "+."
    { PLUS_DOT }
| "*."
    { AST_DOT }
| "/."
    { SLASH_DOT }
| '='
    { EQUAL }
| "<>"
    { LESS_GREATER }
| "<="
    { LESS_EQUAL }
| ">="
    { GREATER_EQUAL }
| '<'
    { LESS }
| '>'
    { GREATER }
| "if"
    { IF }
| "then"
    { THEN }
| "else"
    { ELSE }
| "let"
    { LET }
| "in"
    { IN }
| "rec"
    { REC }
| ','
    { COMMA }
| '_'
    { IDENT(Id.gentmp Type.Unit) }
| "Array.create" | "Array.make" | "create_array"
    { ARRAY_CREATE }
| "fequal"
    { FEQUAL }
| "fless"
    { FLESS }
| "fispos"
    { FISPOS }
| "fisneg"
    { FISNEG }
| "fiszero"
    { FISZERO }
| "fhalf"
    { FHALF }
| "fsqr"
    { FSQR }
| "fabs"
    { FABS }
| "fneg"
    { FNEG }
| "sqrt"
    { SQRT }
| "floor"
    { FLOOR }
| "int_of_float"
    { INT_OF_FLOAT }
| "float_of_int"
    { FLOAT_OF_INT }
| '.'
    { DOT }
| "<-"
    { LESS_MINUS }
| ';'
    { SEMICOLON }
| eof
    { EOF }
| lower (digit|lower|upper|'_')*
    { IDENT(Lexing.lexeme lexbuf) }
| _
    { failwith
        (let sp = Lexing.lexeme_start_p lexbuf in
         let ep = Lexing.lexeme_end_p lexbuf in
         let open Lexing in
         Printf.sprintf
           "unknown token %s near line %d, charcters %d-%d"
           (Lexing.lexeme lexbuf)
           sp.pos_lnum
           (sp.pos_cnum - sp.pos_bol)
           (ep.pos_cnum - ep.pos_bol)) }
and comment = parse
| "*)"
    { () }
| "(*"
    { comment lexbuf;
      comment lexbuf }
| eof
    { Format.eprintf "warning: unterminated comment@." }
| "\n\r" | '\n' | '\r'
    { Lexing.new_line lexbuf; comment lexbuf }
| _
    { comment lexbuf }
