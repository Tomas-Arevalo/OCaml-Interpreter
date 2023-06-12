
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
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
    | INT of (
# 25 "miniml_parse.mly"
       (int)
# 27 "miniml_parse.ml"
  )
    | IN
    | IF
    | ID of (
# 24 "miniml_parse.mly"
       (string)
# 34 "miniml_parse.ml"
  )
    | FUNCTION
    | FLOATTIMES
    | FLOATPLUS
    | FLOATNEG
    | FLOATMINUS
    | FLOATDIVIDED
    | FLOAT of (
# 26 "miniml_parse.mly"
       (float)
# 45 "miniml_parse.ml"
  )
    | FALSE
    | EQUALS
    | EOF
    | ELSE
    | DOT
    | DIVIDED
    | CLOSE
    | BOOLNEGATE
    | AND
  
end

include MenhirBasics

# 6 "miniml_parse.mly"
  
  open Expr ;;

# 65 "miniml_parse.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_input) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: input. *)

  | MenhirState03 : (('s, _menhir_box_input) _menhir_cell1_OPEN, _menhir_box_input) _menhir_state
    (** State 03.
        Stack shape : OPEN.
        Start symbol: input. *)

  | MenhirState04 : (('s, _menhir_box_input) _menhir_cell1_NEG, _menhir_box_input) _menhir_state
    (** State 04.
        Stack shape : NEG.
        Start symbol: input. *)

  | MenhirState08 : (('s, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_state
    (** State 08.
        Stack shape : LET ID.
        Start symbol: input. *)

  | MenhirState10 : (('s, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_state
    (** State 10.
        Stack shape : IF.
        Start symbol: input. *)

  | MenhirState14 : (('s, _menhir_box_input) _menhir_cell1_FUNCTION _menhir_cell0_ID, _menhir_box_input) _menhir_state
    (** State 14.
        Stack shape : FUNCTION ID.
        Start symbol: input. *)

  | MenhirState15 : (('s, _menhir_box_input) _menhir_cell1_FLOATNEG, _menhir_box_input) _menhir_state
    (** State 15.
        Stack shape : FLOATNEG.
        Start symbol: input. *)

  | MenhirState18 : (('s, _menhir_box_input) _menhir_cell1_BOOLNEGATE, _menhir_box_input) _menhir_state
    (** State 18.
        Stack shape : BOOLNEGATE.
        Start symbol: input. *)

  | MenhirState20 : ((('s, _menhir_box_input) _menhir_cell1_BOOLNEGATE, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 20.
        Stack shape : BOOLNEGATE exp.
        Start symbol: input. *)

  | MenhirState21 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_OR, _menhir_box_input) _menhir_state
    (** State 21.
        Stack shape : exp OR.
        Start symbol: input. *)

  | MenhirState22 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_OR, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 22.
        Stack shape : exp OR exp.
        Start symbol: input. *)

  | MenhirState23 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_TIMES, _menhir_box_input) _menhir_state
    (** State 23.
        Stack shape : exp TIMES.
        Start symbol: input. *)

  | MenhirState24 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_TIMES, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 24.
        Stack shape : exp TIMES exp.
        Start symbol: input. *)

  | MenhirState25 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATTIMES, _menhir_box_input) _menhir_state
    (** State 25.
        Stack shape : exp FLOATTIMES.
        Start symbol: input. *)

  | MenhirState26 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATTIMES, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 26.
        Stack shape : exp FLOATTIMES exp.
        Start symbol: input. *)

  | MenhirState27 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_AND, _menhir_box_input) _menhir_state
    (** State 27.
        Stack shape : exp AND.
        Start symbol: input. *)

  | MenhirState28 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_AND, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 28.
        Stack shape : exp AND exp.
        Start symbol: input. *)

  | MenhirState29 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_PLUS, _menhir_box_input) _menhir_state
    (** State 29.
        Stack shape : exp PLUS.
        Start symbol: input. *)

  | MenhirState30 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_PLUS, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 30.
        Stack shape : exp PLUS exp.
        Start symbol: input. *)

  | MenhirState31 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATPLUS, _menhir_box_input) _menhir_state
    (** State 31.
        Stack shape : exp FLOATPLUS.
        Start symbol: input. *)

  | MenhirState32 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATPLUS, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 32.
        Stack shape : exp FLOATPLUS exp.
        Start symbol: input. *)

  | MenhirState33 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATDIVIDED, _menhir_box_input) _menhir_state
    (** State 33.
        Stack shape : exp FLOATDIVIDED.
        Start symbol: input. *)

  | MenhirState34 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATDIVIDED, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 34.
        Stack shape : exp FLOATDIVIDED exp.
        Start symbol: input. *)

  | MenhirState36 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 36.
        Stack shape : exp exp.
        Start symbol: input. *)

  | MenhirState37 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_MINUS, _menhir_box_input) _menhir_state
    (** State 37.
        Stack shape : exp MINUS.
        Start symbol: input. *)

  | MenhirState38 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_MINUS, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 38.
        Stack shape : exp MINUS exp.
        Start symbol: input. *)

  | MenhirState39 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATMINUS, _menhir_box_input) _menhir_state
    (** State 39.
        Stack shape : exp FLOATMINUS.
        Start symbol: input. *)

  | MenhirState40 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATMINUS, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 40.
        Stack shape : exp FLOATMINUS exp.
        Start symbol: input. *)

  | MenhirState41 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_DIVIDED, _menhir_box_input) _menhir_state
    (** State 41.
        Stack shape : exp DIVIDED.
        Start symbol: input. *)

  | MenhirState42 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_DIVIDED, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 42.
        Stack shape : exp DIVIDED exp.
        Start symbol: input. *)

  | MenhirState43 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_LESSTHAN, _menhir_box_input) _menhir_state
    (** State 43.
        Stack shape : exp LESSTHAN.
        Start symbol: input. *)

  | MenhirState44 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_LESSTHAN, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 44.
        Stack shape : exp LESSTHAN exp.
        Start symbol: input. *)

  | MenhirState45 : ((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_EQUALS, _menhir_box_input) _menhir_state
    (** State 45.
        Stack shape : exp EQUALS.
        Start symbol: input. *)

  | MenhirState46 : (((('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_EQUALS, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 46.
        Stack shape : exp EQUALS exp.
        Start symbol: input. *)

  | MenhirState47 : ((('s, _menhir_box_input) _menhir_cell1_FLOATNEG, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 47.
        Stack shape : FLOATNEG exp.
        Start symbol: input. *)

  | MenhirState48 : ((('s, _menhir_box_input) _menhir_cell1_FUNCTION _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 48.
        Stack shape : FUNCTION ID exp.
        Start symbol: input. *)

  | MenhirState49 : ((('s, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 49.
        Stack shape : IF exp.
        Start symbol: input. *)

  | MenhirState50 : (((('s, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_THEN, _menhir_box_input) _menhir_state
    (** State 50.
        Stack shape : IF exp THEN.
        Start symbol: input. *)

  | MenhirState51 : ((((('s, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_THEN, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 51.
        Stack shape : IF exp THEN exp.
        Start symbol: input. *)

  | MenhirState52 : (((((('s, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_THEN, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_ELSE, _menhir_box_input) _menhir_state
    (** State 52.
        Stack shape : IF exp THEN exp ELSE.
        Start symbol: input. *)

  | MenhirState53 : ((((((('s, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_THEN, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_ELSE, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 53.
        Stack shape : IF exp THEN exp ELSE exp.
        Start symbol: input. *)

  | MenhirState54 : ((('s, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 54.
        Stack shape : LET ID exp.
        Start symbol: input. *)

  | MenhirState55 : (((('s, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_IN, _menhir_box_input) _menhir_state
    (** State 55.
        Stack shape : LET ID exp IN.
        Start symbol: input. *)

  | MenhirState56 : ((((('s, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_IN, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 56.
        Stack shape : LET ID exp IN exp.
        Start symbol: input. *)

  | MenhirState58 : (('s, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_state
    (** State 58.
        Stack shape : LET ID.
        Start symbol: input. *)

  | MenhirState59 : ((('s, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 59.
        Stack shape : LET ID exp.
        Start symbol: input. *)

  | MenhirState60 : (((('s, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_IN, _menhir_box_input) _menhir_state
    (** State 60.
        Stack shape : LET ID exp IN.
        Start symbol: input. *)

  | MenhirState61 : ((((('s, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_IN, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 61.
        Stack shape : LET ID exp IN exp.
        Start symbol: input. *)

  | MenhirState62 : ((('s, _menhir_box_input) _menhir_cell1_NEG, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 62.
        Stack shape : NEG exp.
        Start symbol: input. *)

  | MenhirState63 : ((('s, _menhir_box_input) _menhir_cell1_OPEN, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 63.
        Stack shape : OPEN exp.
        Start symbol: input. *)

  | MenhirState66 : (('s, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_state
    (** State 66.
        Stack shape : exp.
        Start symbol: input. *)


and ('s, 'r) _menhir_cell1_exp = 
  | MenhirCell1_exp of 's * ('s, 'r) _menhir_state * (Expr.expr)

and ('s, 'r) _menhir_cell1_AND = 
  | MenhirCell1_AND of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BOOLNEGATE = 
  | MenhirCell1_BOOLNEGATE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DIVIDED = 
  | MenhirCell1_DIVIDED of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ELSE = 
  | MenhirCell1_ELSE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EQUALS = 
  | MenhirCell1_EQUALS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FLOATDIVIDED = 
  | MenhirCell1_FLOATDIVIDED of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FLOATMINUS = 
  | MenhirCell1_FLOATMINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FLOATNEG = 
  | MenhirCell1_FLOATNEG of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FLOATPLUS = 
  | MenhirCell1_FLOATPLUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FLOATTIMES = 
  | MenhirCell1_FLOATTIMES of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FUNCTION = 
  | MenhirCell1_FUNCTION of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_ID = 
  | MenhirCell0_ID of 's * (
# 24 "miniml_parse.mly"
       (string)
# 364 "miniml_parse.ml"
)

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IN = 
  | MenhirCell1_IN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LESSTHAN = 
  | MenhirCell1_LESSTHAN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LET = 
  | MenhirCell1_LET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NEG = 
  | MenhirCell1_NEG of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_OPEN = 
  | MenhirCell1_OPEN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_OR = 
  | MenhirCell1_OR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PLUS = 
  | MenhirCell1_PLUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_THEN = 
  | MenhirCell1_THEN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TIMES = 
  | MenhirCell1_TIMES of 's * ('s, 'r) _menhir_state

and _menhir_box_input = 
  | MenhirBox_input of (Expr.expr) [@@unboxed]

let _menhir_action_01 =
  fun _1 _2 ->
    (
# 47 "miniml_parse.mly"
                                ( App(_1, _2) )
# 408 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_02 =
  fun _1 ->
    (
# 48 "miniml_parse.mly"
                                ( _1 )
# 416 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_03 =
  fun _1 ->
    (
# 50 "miniml_parse.mly"
                                ( Num _1 )
# 424 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_04 =
  fun _1 ->
    (
# 51 "miniml_parse.mly"
                                ( Float _1 )
# 432 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_05 =
  fun () ->
    (
# 52 "miniml_parse.mly"
                                ( Bool true )
# 440 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_06 =
  fun () ->
    (
# 53 "miniml_parse.mly"
                                ( Bool false )
# 448 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_07 =
  fun _1 ->
    (
# 54 "miniml_parse.mly"
                                ( Var _1 )
# 456 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_08 =
  fun _1 _3 ->
    (
# 55 "miniml_parse.mly"
                                ( Binop(Plus, _1, _3) )
# 464 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_09 =
  fun _1 _3 ->
    (
# 56 "miniml_parse.mly"
                                ( Binop(Minus, _1, _3) )
# 472 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_10 =
  fun _1 _3 ->
    (
# 57 "miniml_parse.mly"
                                ( Binop(Times, _1, _3) )
# 480 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_11 =
  fun _1 _3 ->
    (
# 58 "miniml_parse.mly"
                                ( Binop(Divided, _1, _3) )
# 488 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_12 =
  fun _1 _3 ->
    (
# 59 "miniml_parse.mly"
                                ( Binop(FloatPlus, _1, _3) )
# 496 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_13 =
  fun _1 _3 ->
    (
# 60 "miniml_parse.mly"
                                ( Binop(FloatMinus, _1, _3) )
# 504 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_14 =
  fun _1 _3 ->
    (
# 61 "miniml_parse.mly"
                                ( Binop(FloatTimes, _1, _3) )
# 512 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_15 =
  fun _1 _3 ->
    (
# 62 "miniml_parse.mly"
                                ( Binop(FloatDivided, _1, _3) )
# 520 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_16 =
  fun _1 _3 ->
    (
# 63 "miniml_parse.mly"
                                ( Binop(Equals, _1, _3) )
# 528 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_17 =
  fun _1 _3 ->
    (
# 64 "miniml_parse.mly"
                                ( Binop(LessThan, _1, _3) )
# 536 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_18 =
  fun _2 ->
    (
# 65 "miniml_parse.mly"
                                ( Unop(Negate, _2) )
# 544 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_19 =
  fun _2 ->
    (
# 66 "miniml_parse.mly"
                                ( Unop(FloatNegate, _2) )
# 552 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_20 =
  fun _2 ->
    (
# 67 "miniml_parse.mly"
                                ( Unop(BoolNegate, _2) )
# 560 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_21 =
  fun _1 _3 ->
    (
# 68 "miniml_parse.mly"
                                ( Binop(And, _1, _3) )
# 568 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_22 =
  fun _1 _3 ->
    (
# 69 "miniml_parse.mly"
                                ( Binop(Or, _1, _3) )
# 576 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_23 =
  fun _2 _4 _6 ->
    (
# 70 "miniml_parse.mly"
                                        ( Conditional(_2, _4, _6) )
# 584 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_24 =
  fun _2 _4 _6 ->
    (
# 71 "miniml_parse.mly"
                                        ( Let(_2, _4, _6) )
# 592 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_25 =
  fun _3 _5 _7 ->
    (
# 72 "miniml_parse.mly"
                                        ( Letrec(_3, _5, _7) )
# 600 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_26 =
  fun _2 _4 ->
    (
# 73 "miniml_parse.mly"
                                ( Fun(_2, _4) )
# 608 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_27 =
  fun () ->
    (
# 74 "miniml_parse.mly"
                                ( Raise )
# 616 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_28 =
  fun _2 ->
    (
# 75 "miniml_parse.mly"
                                ( _2 )
# 624 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_action_29 =
  fun _1 ->
    (
# 45 "miniml_parse.mly"
                                ( _1 )
# 632 "miniml_parse.ml"
     : (Expr.expr))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | BOOLNEGATE ->
        "BOOLNEGATE"
    | CLOSE ->
        "CLOSE"
    | DIVIDED ->
        "DIVIDED"
    | DOT ->
        "DOT"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQUALS ->
        "EQUALS"
    | FALSE ->
        "FALSE"
    | FLOAT _ ->
        "FLOAT"
    | FLOATDIVIDED ->
        "FLOATDIVIDED"
    | FLOATMINUS ->
        "FLOATMINUS"
    | FLOATNEG ->
        "FLOATNEG"
    | FLOATPLUS ->
        "FLOATPLUS"
    | FLOATTIMES ->
        "FLOATTIMES"
    | FUNCTION ->
        "FUNCTION"
    | ID _ ->
        "ID"
    | IF ->
        "IF"
    | IN ->
        "IN"
    | INT _ ->
        "INT"
    | LESSTHAN ->
        "LESSTHAN"
    | LET ->
        "LET"
    | MINUS ->
        "MINUS"
    | NEG ->
        "NEG"
    | OPEN ->
        "OPEN"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | RAISE ->
        "RAISE"
    | REC ->
        "REC"
    | THEN ->
        "THEN"
    | TIMES ->
        "TIMES"
    | TRUE ->
        "TRUE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_19_spec_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_66 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
  
  and _menhir_run_66 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | LESSTHAN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | EOF ->
          let _1 = _v in
          let _v = _menhir_action_29 _1 in
          MenhirBox_input _v
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | _ ->
          _eRR ()
  
  and _menhir_run_35 : type  ttv_stack. (ttv_stack, _menhir_box_input) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_01 _1 _2 in
      _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_exp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_66 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState04 ->
          _menhir_run_62 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState60 ->
          _menhir_run_61 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState58 ->
          _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState55 ->
          _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState52 ->
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState50 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState10 ->
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState14 ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState15 ->
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState45 ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState43 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState41 ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState39 ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState37 ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState66 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState63 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState62 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState59 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState61 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState54 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState56 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState49 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState51 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState53 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState48 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState47 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState20 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState22 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState24 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState26 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState28 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState30 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState32 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState36 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState46 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState44 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState38 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState42 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState40 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState34 ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState33 ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState31 ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState29 ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState27 ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState25 ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState23 ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState21 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState18 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_63 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_OPEN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | LESSTHAN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | CLOSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_OPEN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_28 _2 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | _ ->
          _eRR ()
  
  and _menhir_run_23 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TIMES (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState23
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState23
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState23
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState23
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState23
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState23
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState23
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_23 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_TIMES -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState23 _tok
  
  and _menhir_run_24 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_TIMES as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
      | CLOSE | DIVIDED | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | PLUS | THEN | TIMES ->
          let MenhirCell1_TIMES (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_10 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_21 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_OR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState21
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_21 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_OR -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21 _tok
  
  and _menhir_run_22 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_OR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | LESSTHAN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | CLOSE | ELSE | EOF | IN | THEN ->
          let MenhirCell1_OR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_22 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_29 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_29 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_PLUS -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState29 _tok
  
  and _menhir_run_30 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | PLUS | THEN ->
          let MenhirCell1_PLUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_08 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_OPEN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_03 : type  ttv_stack. (ttv_stack, _menhir_box_input) _menhir_cell1_OPEN -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState03 _tok
  
  and _menhir_run_04 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NEG (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState04
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_04 : type  ttv_stack. (ttv_stack, _menhir_box_input) _menhir_cell1_NEG -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_62 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState04 _tok
  
  and _menhir_run_62 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_NEG as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
      | CLOSE | DIVIDED | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | PLUS | THEN | TIMES ->
          let MenhirCell1_NEG (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_18 _2 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_05 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | REC ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ID _v ->
              let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | EQUALS ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TRUE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _v = _menhir_action_05 () in
                      _menhir_run_19_spec_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | RAISE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _v = _menhir_action_27 () in
                      _menhir_run_19_spec_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | OPEN ->
                      _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
                  | NEG ->
                      _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
                  | LET ->
                      _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
                  | INT _v_2 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _1 = _v_2 in
                      let _v = _menhir_action_03 _1 in
                      _menhir_run_19_spec_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | IF ->
                      _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
                  | ID _v_4 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _1 = _v_4 in
                      let _v = _menhir_action_07 _1 in
                      _menhir_run_19_spec_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | FUNCTION ->
                      _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
                  | FLOATNEG ->
                      _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
                  | FLOAT _v_6 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _1 = _v_6 in
                      let _v = _menhir_action_04 _1 in
                      _menhir_run_19_spec_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | FALSE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _v = _menhir_action_06 () in
                      _menhir_run_19_spec_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | BOOLNEGATE ->
                      _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | ID _v ->
          let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQUALS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TRUE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_05 () in
                  _menhir_run_19_spec_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | RAISE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_27 () in
                  _menhir_run_19_spec_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | OPEN ->
                  _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
              | NEG ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
              | LET ->
                  _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
              | INT _v_11 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _1 = _v_11 in
                  let _v = _menhir_action_03 _1 in
                  _menhir_run_19_spec_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | IF ->
                  _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
              | ID _v_13 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _1 = _v_13 in
                  let _v = _menhir_action_07 _1 in
                  _menhir_run_19_spec_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | FUNCTION ->
                  _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
              | FLOATNEG ->
                  _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
              | FLOAT _v_15 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _1 = _v_15 in
                  let _v = _menhir_action_04 _1 in
                  _menhir_run_19_spec_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | FALSE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_06 () in
                  _menhir_run_19_spec_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | BOOLNEGATE ->
                  _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_08 : type  ttv_stack. (ttv_stack, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState08 _tok
  
  and _menhir_run_54 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | OR ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | MINUS ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | LESSTHAN ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | INT _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IN ->
          let _menhir_stack = MenhirCell1_IN (_menhir_stack, MenhirState54) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_19_spec_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | RAISE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_27 () in
              _menhir_run_19_spec_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | OPEN ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
          | NEG ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
          | LET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
          | INT _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_6 in
              let _v = _menhir_action_03 _1 in
              _menhir_run_19_spec_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | IF ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
          | ID _v_8 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_8 in
              let _v = _menhir_action_07 _1 in
              _menhir_run_19_spec_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | FUNCTION ->
              _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
          | FLOATNEG ->
              _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
          | FLOAT _v_10 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_10 in
              let _v = _menhir_action_04 _1 in
              _menhir_run_19_spec_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_06 () in
              _menhir_run_19_spec_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | BOOLNEGATE ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
          | _ ->
              _eRR ())
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | ID _v_13 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_13 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | FLOATTIMES ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | FLOATPLUS ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | FLOATMINUS ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | FLOATDIVIDED ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | FLOAT _v_15 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_15 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | DIVIDED ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | AND ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | _ ->
          _eRR ()
  
  and _menhir_run_37 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState37
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState37
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState37
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState37
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState37
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState37
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState37
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_37 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState37 _tok
  
  and _menhir_run_38 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | PLUS | THEN ->
          let MenhirCell1_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_09 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_12 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FUNCTION (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ID _v ->
          let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | DOT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TRUE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_05 () in
                  _menhir_run_19_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | RAISE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_27 () in
                  _menhir_run_19_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | OPEN ->
                  _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
              | NEG ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
              | LET ->
                  _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
              | INT _v_2 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _1 = _v_2 in
                  let _v = _menhir_action_03 _1 in
                  _menhir_run_19_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | IF ->
                  _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
              | ID _v_4 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _1 = _v_4 in
                  let _v = _menhir_action_07 _1 in
                  _menhir_run_19_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | FUNCTION ->
                  _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
              | FLOATNEG ->
                  _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
              | FLOAT _v_6 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _1 = _v_6 in
                  let _v = _menhir_action_04 _1 in
                  _menhir_run_19_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | FALSE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_06 () in
                  _menhir_run_19_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | BOOLNEGATE ->
                  _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_14 : type  ttv_stack. (ttv_stack, _menhir_box_input) _menhir_cell1_FUNCTION _menhir_cell0_ID -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState14 _tok
  
  and _menhir_run_48 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_FUNCTION _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | LESSTHAN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | CLOSE | ELSE | EOF | IN | THEN ->
          let MenhirCell0_ID (_menhir_stack, _2) = _menhir_stack in
          let MenhirCell1_FUNCTION (_menhir_stack, _menhir_s) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_26 _2 _4 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_43 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LESSTHAN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState43
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState43
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState43
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState43
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState43
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState43
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState43
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_43 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_LESSTHAN -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState43 _tok
  
  and _menhir_run_44 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_LESSTHAN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | THEN ->
          let MenhirCell1_LESSTHAN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_17 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_25 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FLOATTIMES (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState25
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState25
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState25
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState25
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState25
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState25
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState25
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_25 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATTIMES -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState25 _tok
  
  and _menhir_run_26 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATTIMES as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | CLOSE | DIVIDED | ELSE | EOF | EQUALS | FLOATDIVIDED | FLOATMINUS | FLOATNEG | FLOATPLUS | FLOATTIMES | IF | IN | LESSTHAN | MINUS | NEG | PLUS | THEN | TIMES ->
          let MenhirCell1_FLOATTIMES (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_14 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_18 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BOOLNEGATE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_18 : type  ttv_stack. (ttv_stack, _menhir_box_input) _menhir_cell1_BOOLNEGATE -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState18 _tok
  
  and _menhir_run_20 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_BOOLNEGATE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | CLOSE | DIVIDED | ELSE | EOF | EQUALS | FLOATDIVIDED | FLOATMINUS | FLOATNEG | FLOATPLUS | FLOATTIMES | IF | IN | LESSTHAN | MINUS | NEG | PLUS | THEN | TIMES ->
          let MenhirCell1_BOOLNEGATE (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_20 _2 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_27 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AND (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState27
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState27
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState27
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState27
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState27
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState27
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState27
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_27 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_AND -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState27 _tok
  
  and _menhir_run_28 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_AND as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | LESSTHAN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | CLOSE | ELSE | EOF | IN | THEN ->
          let MenhirCell1_AND (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_21 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_10 : type  ttv_stack. (ttv_stack, _menhir_box_input) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState10 _tok
  
  and _menhir_run_49 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | THEN ->
          let _menhir_stack = MenhirCell1_THEN (_menhir_stack, MenhirState49) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_19_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | RAISE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_27 () in
              _menhir_run_19_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | OPEN ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
          | NEG ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
          | LET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
          | INT _v_3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_3 in
              let _v = _menhir_action_03 _1 in
              _menhir_run_19_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | IF ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
          | ID _v_5 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_5 in
              let _v = _menhir_action_07 _1 in
              _menhir_run_19_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | FUNCTION ->
              _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
          | FLOATNEG ->
              _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
          | FLOAT _v_7 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_7 in
              let _v = _menhir_action_04 _1 in
              _menhir_run_19_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_06 () in
              _menhir_run_19_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | BOOLNEGATE ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
          | _ ->
              _eRR ())
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | OR ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | MINUS ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | LESSTHAN ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | INT _v_11 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_11 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | ID _v_13 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_13 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | FLOATTIMES ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | FLOATPLUS ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | FLOATMINUS ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | FLOATDIVIDED ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | FLOAT _v_15 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_15 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | DIVIDED ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | AND ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_50 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_THEN -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState50 _tok
  
  and _menhir_run_51 : type  ttv_stack. ((((ttv_stack, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_THEN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | OR ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | MINUS ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | LESSTHAN ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | INT _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | ID _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | FLOATTIMES ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | FLOATPLUS ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | FLOATMINUS ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | FLOATDIVIDED ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | FLOAT _v_6 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | ELSE ->
          let _menhir_stack = MenhirCell1_ELSE (_menhir_stack, MenhirState51) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_19_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | RAISE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_27 () in
              _menhir_run_19_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | OPEN ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
          | NEG ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
          | LET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
          | INT _v_11 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_11 in
              let _v = _menhir_action_03 _1 in
              _menhir_run_19_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | IF ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
          | ID _v_13 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_13 in
              let _v = _menhir_action_07 _1 in
              _menhir_run_19_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | FUNCTION ->
              _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
          | FLOATNEG ->
              _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
          | FLOAT _v_15 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_15 in
              let _v = _menhir_action_04 _1 in
              _menhir_run_19_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_06 () in
              _menhir_run_19_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | BOOLNEGATE ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
          | _ ->
              _eRR ())
      | DIVIDED ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | AND ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | _ ->
          _eRR ()
  
  and _menhir_run_31 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FLOATPLUS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState31
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState31
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState31
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState31
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState31
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState31
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState31
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_31 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATPLUS -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState31 _tok
  
  and _menhir_run_32 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATPLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | CLOSE | DIVIDED | ELSE | EOF | EQUALS | FLOATMINUS | FLOATNEG | FLOATPLUS | IF | IN | LESSTHAN | MINUS | NEG | PLUS | THEN | TIMES ->
          let MenhirCell1_FLOATPLUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_12 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_33 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FLOATDIVIDED (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState33
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState33
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState33
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState33
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState33
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState33
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState33
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_33 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATDIVIDED -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState33 _tok
  
  and _menhir_run_34 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATDIVIDED as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | CLOSE | DIVIDED | ELSE | EOF | EQUALS | FLOATDIVIDED | FLOATMINUS | FLOATNEG | FLOATPLUS | FLOATTIMES | IF | IN | LESSTHAN | MINUS | NEG | PLUS | THEN | TIMES ->
          let MenhirCell1_FLOATDIVIDED (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_15 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_expnoapp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState66 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState63 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState62 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState59 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState61 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState54 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState56 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState49 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState51 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState53 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState48 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState47 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState20 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState22 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState24 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState26 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState28 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState30 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState32 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState36 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState46 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState44 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState38 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState42 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState40 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState34 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState00 ->
          _menhir_run_19_spec_00 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState03 ->
          _menhir_run_19_spec_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState04 ->
          _menhir_run_19_spec_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState60 ->
          _menhir_run_19_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState58 ->
          _menhir_run_19_spec_58 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState55 ->
          _menhir_run_19_spec_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState08 ->
          _menhir_run_19_spec_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState52 ->
          _menhir_run_19_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState50 ->
          _menhir_run_19_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState10 ->
          _menhir_run_19_spec_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState14 ->
          _menhir_run_19_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState15 ->
          _menhir_run_19_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState45 ->
          _menhir_run_19_spec_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState43 ->
          _menhir_run_19_spec_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState41 ->
          _menhir_run_19_spec_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState39 ->
          _menhir_run_19_spec_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState37 ->
          _menhir_run_19_spec_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState33 ->
          _menhir_run_19_spec_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState31 ->
          _menhir_run_19_spec_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState29 ->
          _menhir_run_19_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState27 ->
          _menhir_run_19_spec_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState25 ->
          _menhir_run_19_spec_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState23 ->
          _menhir_run_19_spec_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState21 ->
          _menhir_run_19_spec_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState18 ->
          _menhir_run_19_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_19_spec_60 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_IN -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_61 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState60 _tok
  
  and _menhir_run_61 : type  ttv_stack. ((((ttv_stack, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_IN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | LESSTHAN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState61
      | CLOSE | ELSE | EOF | IN | THEN ->
          let MenhirCell1_IN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _, _4) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, _2) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
          let _6 = _v in
          let _v = _menhir_action_24 _2 _4 _6 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_15 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FLOATNEG (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_15 : type  ttv_stack. (ttv_stack, _menhir_box_input) _menhir_cell1_FLOATNEG -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState15 _tok
  
  and _menhir_run_47 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_FLOATNEG as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | CLOSE | DIVIDED | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | NEG | PLUS | THEN | TIMES ->
          let MenhirCell1_FLOATNEG (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_19 _2 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_39 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FLOATMINUS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState39
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState39
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState39
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState39
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState39
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState39
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState39
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_39 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATMINUS -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState39 _tok
  
  and _menhir_run_40 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_FLOATMINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | CLOSE | DIVIDED | ELSE | EOF | EQUALS | FLOATMINUS | FLOATNEG | FLOATPLUS | IF | IN | LESSTHAN | MINUS | NEG | PLUS | THEN | TIMES ->
          let MenhirCell1_FLOATMINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_13 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_45 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EQUALS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState45
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState45
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState45
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState45
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState45
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState45
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState45
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_45 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_EQUALS -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState45 _tok
  
  and _menhir_run_46 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_EQUALS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | CLOSE | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | THEN ->
          let MenhirCell1_EQUALS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_16 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_41 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DIVIDED (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_41 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_41 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_DIVIDED -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState41 _tok
  
  and _menhir_run_42 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_DIVIDED as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | CLOSE | DIVIDED | ELSE | EOF | EQUALS | IF | IN | LESSTHAN | MINUS | PLUS | THEN | TIMES ->
          let MenhirCell1_DIVIDED (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_11 _1 _3 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_58 : type  ttv_stack. (ttv_stack, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState58 _tok
  
  and _menhir_run_59 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | OR ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | MINUS ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | LESSTHAN ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | INT _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IN ->
          let _menhir_stack = MenhirCell1_IN (_menhir_stack, MenhirState59) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_05 () in
              _menhir_run_19_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | RAISE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_27 () in
              _menhir_run_19_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | OPEN ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
          | NEG ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
          | LET ->
              _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
          | INT _v_6 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_6 in
              let _v = _menhir_action_03 _1 in
              _menhir_run_19_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | IF ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
          | ID _v_8 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_8 in
              let _v = _menhir_action_07 _1 in
              _menhir_run_19_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | FUNCTION ->
              _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
          | FLOATNEG ->
              _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
          | FLOAT _v_10 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _1 = _v_10 in
              let _v = _menhir_action_04 _1 in
              _menhir_run_19_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_06 () in
              _menhir_run_19_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | BOOLNEGATE ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
          | _ ->
              _eRR ())
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | ID _v_13 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_13 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | FLOATTIMES ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | FLOATPLUS ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | FLOATMINUS ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | FLOATDIVIDED ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | FLOAT _v_15 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_15 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | DIVIDED ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | AND ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_55 : type  ttv_stack. (((ttv_stack, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_IN -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState55 _tok
  
  and _menhir_run_56 : type  ttv_stack. ((((ttv_stack, _menhir_box_input) _menhir_cell1_LET _menhir_cell0_ID, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_IN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | LESSTHAN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | CLOSE | ELSE | EOF | IN | THEN ->
          let MenhirCell1_IN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _, _5) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, _3) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
          let _7 = _v in
          let _v = _menhir_action_25 _3 _5 _7 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_19_spec_52 : type  ttv_stack. (((((ttv_stack, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_THEN, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_ELSE -> _ -> _ -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_02 _1 in
      _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState52 _tok
  
  and _menhir_run_53 : type  ttv_stack. ((((((ttv_stack, _menhir_box_input) _menhir_cell1_IF, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_THEN, _menhir_box_input) _menhir_cell1_exp, _menhir_box_input) _menhir_cell1_ELSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | RAISE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | OPEN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | NEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | MINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | LET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | LESSTHAN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | INT _v_2 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | ID _v_4 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | FLOATTIMES ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | FLOATPLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | FLOATNEG ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | FLOATMINUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | FLOATDIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | FLOAT _v_6 ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | DIVIDED ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | BOOLNEGATE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | CLOSE | ELSE | EOF | IN | THEN ->
          let MenhirCell1_ELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _, _4) = _menhir_stack in
          let MenhirCell1_THEN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let _6 = _v in
          let _v = _menhir_action_23 _2 _4 _6 in
          _menhir_goto_expnoapp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_36 : type  ttv_stack. ((ttv_stack, _menhir_box_input) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_input) _menhir_state -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIMES ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PLUS ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | OR ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | MINUS ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | LESSTHAN ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | INT _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_2 in
          let _v = _menhir_action_03 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | ID _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_4 in
          let _v = _menhir_action_07 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | FLOATTIMES ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | FLOATPLUS ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | FLOATMINUS ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | FLOATDIVIDED ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | FLOAT _v_6 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v_6 in
          let _v = _menhir_action_04 _1 in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EQUALS ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | DIVIDED ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | AND ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | _ ->
          _eRR ()
  
  let rec _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_input =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_run_19_spec_00 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RAISE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_27 () in
          _menhir_run_19_spec_00 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | OPEN ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | NEG ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | LET ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_03 _1 in
          _menhir_run_19_spec_00 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | IF ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | ID _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_07 _1 in
          _menhir_run_19_spec_00 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FUNCTION ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | FLOATNEG ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | FLOAT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_run_19_spec_00 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_06 () in
          _menhir_run_19_spec_00 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BOOLNEGATE ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | _ ->
          _eRR ()
  
end

let input =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_input v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

# 78 "miniml_parse.mly"
  

# 4515 "miniml_parse.ml"
