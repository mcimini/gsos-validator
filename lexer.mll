{
  open Lexing
  open Parser
  exception Error of string


let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }

}

let id = ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '-' ''']*


rule token = parse
    [' ' '\t']  { token lexbuf }
  | ['\r' '\n']  { next_line lexbuf; token lexbuf }
  | "true"               { TRUE }
  | "false"               { FALSE }
  | "skip"               { SKIP }
  | "rules"               { RULE }
  | "premises"               { PREM }
  | "conclusion"               { CONCL }
  | "error"               { ERROR }
  | "@"               { APPEND }
  | "if"               { IF }
  | "then"               { THEN }
  | "else"               { ELSE }
  | "isVar"               { ISVAR }
  | "getVars"               { GETVARS }
  | "not"               { NOT }
  | "or"               { OR }
  | "and"               { AND }
  | "map"               { MAP }
  | "in"               { IN }
  | "="      { EQUAL }
  | "uniquefy"               { UNIQUE }
  | "match"               { MATCH }
  | "with"               { WITH }
  | "must"               { MUST }
  | "otherwise"               { OTHERWISE }
  | "LTsources"               { LTsources }
  | "LTtargets"               { LTtargets }
  | "LTsource"               { LTsource }
  | "LTtarget"               { LTtarget }
  | "sublistOf"               { SUBLIST }
  | "distinctVars"               { DISTINCT }
  | "->"               { ARROW }
  | "|"               { MID }
  | ","               { COMMA }
  | "("               { LPAREN }
  | ")"               { RPAREN }
  | "["               { LSQUARE }
  | "]"               { RSQUARE }
  | ":"               { COLON }
  | "-->"               { STEP }
  | "--"               { LEFTOFSTEP }
  | "-/-" { NOSTEP }
  | "=>"               { NEXT }
  | "\""               { STRING }
  | "."               { DOT }
  | id             { ID (Lexing.lexeme lexbuf) }
  | eof             { EOF }
  | _
	    { raise (Error (Printf.sprintf "At offset %d: unexpected character %s.\n" (Lexing.lexeme_start lexbuf) (Lexing.lexeme lexbuf))) }
{
}
