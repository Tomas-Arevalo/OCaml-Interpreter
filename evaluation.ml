(* This module implements a small untyped ML-like language under
   various operational semantics.*)

open Expr ;;
  
(* Exception for evaluator runtime, generated by a runtime error in
   the interpreter *)
exception EvalError of string ;;
  
(* Exception for evaluator runtime, generated by an explicit `raise`
   construct in the object language *)
exception EvalException ;;

(*......................................................................
  Environments and values 
 *)

module type ENV = sig
    (* the type of environments *)
    type env
	   
    (* the type of values (including closures) stored in
       environments *)
    type value =
      | Val of expr
      | Closure of (expr * env)
   
    (* empty () -- Returns an empty environment *)
    val empty : unit -> env

    (* close expr env -- Returns a closure for `expr` and its `env` *)
    val close : expr -> env -> value

    (* lookup env varid -- Returns the value in the `env` for the
       `varid`, raising an `Eval_error` if not found *)
    val lookup : env -> varid -> value

    (* extend env varid loc -- Returns a new environment just like
       `env` except that it maps the variable `varid` to the `value`
       stored at `loc`. This allows later changing the value, an
       ability used in the evaluation of `letrec`. To make good on
       this, extending an environment needs to preserve the previous
       bindings in a physical, not just structural, way. *)
    val extend : env -> varid -> value ref -> env

    (* env_to_string env -- Returns a printable string representation
       of environment `env` *)
    val env_to_string : env -> string
                                 
    (* value_to_string ?printenvp value -- Returns a printable string
       representation of a value; the optional flag `printenvp`
       (default: `true`) determines whether to include the environment
       in the string representation when called on a closure *)
    val value_to_string : ?printenvp:bool -> value -> string
  end

module Env : ENV =
  struct
    type env = (varid * value ref) list
     and value =
       | Val of expr
       | Closure of (expr * env)

    let empty () : env = []

    let close (exp : expr) (env : env) : value =
      Closure (exp, env)

    let lookup (env : env) (varname : varid) : value =
      try 
        !(List.assoc varname env)
      with
        Not_found -> raise (EvalError ("Unbound var "^varname))

    let extend (env : env) (varname : varid) (loc : value ref) : env =
      try 
        let _ = lookup env varname in
        List.map (fun (v, e) -> if v = varname then (v, loc)
                                else (v, e)) env
      with 
        (* Triggered by lookup if Not_found  *)
        EvalError _ -> (varname, loc) :: env;;

    let rec env_to_string (env : env) : string =
      match env with
      | [] -> ""
      | (var, value) :: tl -> var^" -> "^ value_to_string !value^
                              ", "^ env_to_string tl

    and value_to_string ?(printenvp : bool = true) (v : value) : string =
      match v with
      | Val exp -> exp_to_concrete_string exp
      | Closure (exp, env) -> 
                if printenvp then 
                  (exp_to_concrete_string exp)^" Enviroment: "^
                  (env_to_string env)
                else 
                  exp_to_concrete_string exp

  end
;;

(* The TRIVIAL EVALUATOR, which leaves the expression to be evaluated
   essentially unchanged, just converted to a value for consistency
   with the signature of the evaluators. *)

let binop_helper (op : binop) 
                 (val1 : expr) 
                 (val2 : expr) 
                 : expr = 
  match op, val1, val2 with
  | Plus, Num x, Num y -> Num (x + y)
  | FloatPlus, Float x, Float y -> Float (x +. y)
  | Minus, Num x, Num y -> Num (x - y)
  | FloatMinus, Float x, Float y -> Float (x -. y)
  | Times, Num x, Num y -> Num (x * y)
  | FloatTimes, Float x, Float y -> Float (x *. y)
  | Divided, Num x, Num y -> Num (x / y)
  | FloatDivided, Float x, Float y -> Float (x /. y)
  | Equals, Num x, Num y -> Bool (x = y)
  | Equals, Float x, Float y -> Bool (x = y)
  | Equals, Bool x, Bool y -> Bool (x = y)
  | LessThan, Num x, Num y -> Bool (x < y)
  | LessThan, Float x, Float y -> Bool (x < y)
  | And, Bool x, Bool y -> Bool (x && y)
  | Or, Bool x, Bool y -> Bool (x || y)
  | _ -> raise (EvalError "Invalid values/operator") ;;

let unop_helper (op : unop) 
                (val1 : expr) 
                : expr = 
  match op, val1 with
  | Negate, Num x -> Num (~- x)
  | FloatNegate, Float x -> Float (~-. x)
  | BoolNegate, Bool b -> Bool (not b)
  | _ -> raise (EvalError "must be an int/float") ;;

let val_to_expr (v : Env.value) : expr =
  match v with
  | Env.Val v -> v 
  | Env.Closure _ -> raise (EvalError "Impossible Closure") ;;

type semantics = | Dynamic | Lexical ;;
   
let make_model (sem : semantics) (exp : expr) (env : Env.env) : Env.value =
  let rec make (exp: expr) (env : Env.env) : Env.value = 
    match exp with
    | Var v -> 
          (match Env.lookup env v with
          | Env.Val e -> Env.Val e
          | Env.Closure (ex, new_env) -> 
                        if sem = Dynamic then 
                          raise (EvalError "Closure in Dynamic")
                        else 
                        make ex new_env)
    | Num _ | Float _ | Bool _ | Unassigned -> Env.Val exp
    | Fun _ -> if sem = Dynamic then Env.Val exp 
               else Env.close exp env
    | Unop (op, e) -> Env.Val (unop_helper op (val_to_expr(make e env)))
    | Binop (op, e1, e2) -> 
          Env.Val (binop_helper op 
                                (val_to_expr (make e1 env)) 
                                (val_to_expr (make e2 env)))
    | Conditional (e1, e2, e3) -> 
          (match make e1 env with
          | Env.Val (Bool true) -> make e2 env
          | Env.Val (Bool false) -> make e3 env
          | _ -> raise (EvalError "Conditional expects a bool value")) 
    | Let (v, def, body) -> 
          let valref = ref (make def env) in 
          make body (Env.extend env v valref)
    | Letrec (v, def, body) -> 
          if sem = Dynamic then
            let valref = ref (make def env) in 
            make body (Env.extend env v valref)
          else 
            (* Follows steps on pg 14 of Readme *)
            let valref = ref (Env.Val Unassigned) in 
            let env_x = Env.extend env v valref in
            let v_D = make def env_x in
            (match v_D with
            | Env.Val Var _ -> raise(EvalError "Unassigned Var")
            | _ -> valref := v_D; make body env_x)   
    | Raise -> raise EvalException
    | App (e1, e2) -> 
            let valref = ref (make e2 env) in 
            match make e1 env with
            (* Will Only Happen if Dynamic *)
            | Env.Val (Fun(v, e)) -> make e (Env.extend env v valref)
            (* Will Only Happen if Lexical *)
            | Env.Closure (Fun(v, e), previous) -> 
              make e (Env.extend previous v valref)
            | _ -> raise (EvalError "First arg must be function ")
  in 
  make exp env ;;

let eval_t (exp : expr) (_env : Env.env) : Env.value =
  (* coerce the expr, unchanged, into a value *)
  Env.Val exp ;;

(* The SUBSTITUTION MODEL evaluator -- to be completed *)
   
let eval_s (exp : expr) (_env : Env.env) : Env.value =
  let rec eval_s' (exp: expr) : expr = 
    match exp with
    | Var v -> raise (EvalError ("Unbound var " ^ v)) 
    | Num _ | Float _ | Bool _ | Fun (_, _) | Unassigned -> exp
    | Unop (op, e) -> unop_helper op (eval_s' e)
    | Binop (op, e1, e2) -> binop_helper op (eval_s' e1) (eval_s' e2)
    | Conditional (e1, e2, e3) ->
          (match eval_s' e1 with
          | Bool true -> eval_s' e2
          | Bool false -> eval_s' e3
          | _ -> raise (EvalError "Conditional expects a bool value"))
    | Let (x, def, body) -> 
          let value = eval_s' def in
          eval_s' (subst x value body)
    | Letrec (x, def, body) -> 
          eval_s' (subst x (subst x (Letrec (x, def, Var x)) def) body)  
    | Raise -> raise EvalException
    | App (e1, e2) ->
          match eval_s' e1 with
          | Fun (v, e) -> eval_s' (subst v (eval_s' e2) e)
          | _ -> raise (EvalError "First arg must be function ")
  in
  Env.Val (eval_s' exp) ;;

(* The DYNAMICALLY-SCOPED ENVIRONMENT MODEL evaluator -- to be
   completed *)
let eval_d (exp : expr) (env : Env.env) : Env.value =
  make_model Dynamic exp env ;;

(* The LEXICALLY-SCOPED ENVIRONMENT MODEL evaluator -- optionally
   completed as (part of) your extension *)
let eval_l (exp : expr) (env : Env.env) : Env.value =
  make_model Lexical exp env ;;

(* The EXTENDED evaluator -- if you want, you can provide your
   extension as a separate evaluator, or if it is type- and
   correctness-compatible with one of the above, you can incorporate
   your extensions within `eval_s`, `eval_d`, or `eval_l`. *)

let eval_e _ =
  failwith "eval_e not implemented" ;;
  
(* Connecting the evaluators to the external world. The REPL in
   `miniml.ml` uses a call to the single function `evaluate` defined
   here. Initially, `evaluate` is the trivial evaluator `eval_t`. But
   you can define it to use any of the other evaluators as you proceed
   to implement them. (We will directly unit test the four evaluators
   above, not the `evaluate` function, so it doesn't matter how it's
   set when you submit your solution.) *)
   
let evaluate = eval_d ;;

(* Orginal eval_d; before make_model *)

(* let rec eval_d (exp : expr) (env : Env.env) : Env.value =
  match exp with
  | Var v -> 
        (match Env.lookup env v with
        | Env.Val e -> Env.Val e
        | Env.Closure (_, _) -> raise (EvalError "Closure in Dynamic"))
  | Num _ | Float _ | Bool _ | Fun (_, _) | Unassigned -> Env.Val exp
  | Unop (op, e) -> Env.Val (unop_helper op (val_to_expr(eval_d e env)))
  | Binop (op, e1, e2) -> 
        Env.Val (binop_helper op 
                     (val_to_expr (eval_d e1 env)) 
                     (val_to_expr (eval_d e2 env)))
  | Conditional (e1, e2, e3) ->
        (match eval_d e1 env with
        | Env.Val (Bool true) -> eval_d e2 env
        | Env.Val (Bool false) -> eval_d e3 env
        | _ -> raise (EvalError "Conditional expects a bool value")) 
  | Let (v, def, body) | Letrec (v, def, body) -> 
        let valref = ref (eval_d def env) in 
        eval_d body (Env.extend env v valref)
  | Raise -> raise EvalException
  | App (e1, e2) -> 
        let valref = ref (eval_d e2 env) in 
        match eval_d e1 env with
        | Env.Val (Fun(v, e)) -> eval_d e (Env.extend env v valref)
        | _ -> raise (EvalError "First arg must be function ") ;; *)

(* Orignal eval_l before make_model *)

(* let rec eval_l (exp : expr) (env : Env.env) : Env.value =
  match exp with
  | Var v -> 
        (match Env.lookup env v with
        | Env.Val e -> Env.Val e
        | Env.Closure (ex, new_env) -> eval_l ex new_env)
  | Num _ | Float _ | Bool _ | Unassigned -> Env.Val exp
  | Unop (op, e) ->       
          Env.Val (unop_helper op (val_to_expr(eval_l e env)))
  | Binop (op, e1, e2) -> 
          Env.Val(binop_helper op 
                               (val_to_expr(eval_l e1 env))
                               (val_to_expr(eval_l e2 env)))
  | Conditional (e1, e2, e3) ->
        (match eval_l e1 env with
        | Env.Val (Bool true) -> eval_l e2 env
        | Env.Val (Bool false) -> eval_l e3 env
        | _ -> raise (EvalError "Conditional expects a bool value")) 
  | Fun _ -> Env.close exp env 
  | Let (v, def, body) -> 
        let valref = ref (eval_l def env) in 
        eval_l body (Env.extend env v valref)
  | Letrec (v, def, body) -> 
        (* Follows Steps on pg 14 of readme*)
        let valref = ref (Env.Val Unassigned) in 
        let env_x = Env.extend env v valref in
        let v_D = eval_l def env_x in
        (match v_D with
        | Env.Val Var _ -> raise(EvalError "Unassigned Var")
        | _ -> valref := v_D; eval_l body env_x)      
  | Raise -> raise EvalException
  | App (e1, e2) -> 
        let valref = ref (eval_l e2 env) in 
        match eval_l e1 env with
        | Env.Closure (Fun(v, e), previous) -> 
                  eval_l e (Env.extend previous v valref)
        | _ -> raise (EvalError "First arg must be function ") ;; *)
