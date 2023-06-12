
(* The type of tokens. *)

type token = 
  | TRUE
  | TIMES
  | THEN
  | REC
  | RAISE
  | PLUS
  | OR
  | OPEN
  | NEG
  | MINUS
  | LET
  | LESSTHAN
  | INT of (int)
  | IN
  | IF
  | ID of (string)
  | FUNCTION
  | FLOATTIMES
  | FLOATPLUS
  | FLOATNEG
  | FLOATMINUS
  | FLOATDIVIDED
  | FLOAT of (float)
  | FALSE
  | EQUALS
  | EOF
  | ELSE
  | DOT
  | DIVIDED
  | CLOSE
  | BOOLNEGATE
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val input: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Expr.expr)
