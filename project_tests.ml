(*
                         CS 51 Problem Set 1
                Core Functional Programming -- Testing
*)                           

open Evaluation ;;
open Expr ;;

(* The Absbook module contains simple functions for unit testing:
   `unit_test` and `unit_test_within`. *)
open CS51Utils ;;
open Absbook ;;         

let free_vars_test () = 
  unit_test (same_vars (free_vars (Var "x")) (vars_of_list ["x"]))
            "free_vars Var" ;;

let subst_test () = 
  unit_test(subst ("x") (Num 3) (Var "x") = Num 3)
  "subst Var";;

let eval_s_test () = 
  unit_test (eval_s (Num 5) (Env.empty ()) = Env.Val (Num 5))
            "eval_d Num";;


let eval_d_test () =
  unit_test (eval_d (Num 5) (Env.empty ()) = Env.Val (Num 5))
            "eval_d Num";;

let test_all () =
  free_vars_test () ;
  subst_test () ;
  eval_s_test () ;
  eval_d_test () ;;

let _ = test_all () ;;