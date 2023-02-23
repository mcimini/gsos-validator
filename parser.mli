
(* The type of tokens. *)

type token = 
  | WITH
  | UNIQUE
  | TRUE
  | THEN
  | SUBLIST
  | STRING
  | STEP
  | SKIP
  | SELECT
  | RULE
  | RSQUARE
  | RPAREN
  | PREM
  | OTHERWISE
  | OR
  | NOT
  | NOSTEP
  | NEXT
  | MUST
  | MID
  | MATCH
  | MAP
  | LTtargets
  | LTtarget
  | LTsources
  | LTsource
  | LSQUARE
  | LPAREN
  | LIST
  | LEFTOFSTEP
  | ISVAR
  | IN
  | IF
  | ID of (string)
  | GETVARS
  | FALSE
  | ERROR
  | EQUAL
  | EOF
  | ELSE
  | DOT
  | DISTINCT
  | CONCL
  | COMMA
  | COLON
  | ARROW
  | APPEND
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val fileOne: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Language.e))

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Language.e list))
