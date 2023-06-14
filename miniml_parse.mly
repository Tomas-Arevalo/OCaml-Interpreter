(* Parser *)                
%{
  open Expr ;;
%}

%token EOF
%token OPEN CLOSE
%token LET DOT IN REC
%token NEG
%token PLUS MINUS 
%token TIMES DIVIDED
%token FLOATNEG
%token FLOATPLUS FLOATMINUS 
%token FLOATTIMES FLOATDIVIDED
%token BOOLNEGATE
%token LESSTHAN EQUALS
%token IF THEN ELSE 
%token FUNCTION
%token RAISE
%token <string> ID
%token <int> INT 
%token <float> FLOAT
%token TRUE FALSE
%token AND OR

%nonassoc IF
%left LESSTHAN EQUALS
%left PLUS MINUS
%left TIMES DIVIDED
%nonassoc NEG
%nonassoc FLOATNEG
%left FLOATPLUS FLOATMINUS 
%left FLOATTIMES FLOATDIVIDED
%nonassoc BOOLNEGATE

%start input
%type <Expr.expr> input

(* Grammar follows *)
%%
input:  exp EOF                 { $1 }

exp:    exp expnoapp            { App($1, $2) }
        | expnoapp              { $1 }

expnoapp: INT                   { Num $1 }
        | FLOAT                 { Float $1 }
        | TRUE                  { Bool true }
        | FALSE                 { Bool false }
        | ID                    { Var $1 }
        | exp PLUS exp          { Binop(Plus, $1, $3) }
        | exp MINUS exp         { Binop(Minus, $1, $3) }
        | exp TIMES exp         { Binop(Times, $1, $3) }
        | exp DIVIDED exp       { Binop(Divided, $1, $3) }
        | exp FLOATPLUS exp     { Binop(FloatPlus, $1, $3) }
        | exp FLOATMINUS exp    { Binop(FloatMinus, $1, $3) }
        | exp FLOATTIMES exp    { Binop(FloatTimes, $1, $3) }
        | exp FLOATDIVIDED exp  { Binop(FloatDivided, $1, $3) }
        | exp EQUALS exp        { Binop(Equals, $1, $3) }
        | exp LESSTHAN exp      { Binop(LessThan, $1, $3) }
        | NEG exp               { Unop(Negate, $2) }
        | FLOATNEG exp          { Unop(FloatNegate, $2) }
        | BOOLNEGATE exp        { Unop(BoolNegate, $2) }
        | exp AND exp           { Binop(And, $1, $3) }
        | exp OR exp            { Binop(Or, $1, $3) }
        | IF exp THEN exp ELSE exp      { Conditional($2, $4, $6) }
        | LET ID EQUALS exp IN exp      { Let($2, $4, $6) }
        | LET REC ID EQUALS exp IN exp  { Letrec($3, $5, $7) }
        | FUNCTION ID DOT exp   { Fun($2, $4) } 
        | RAISE                 { Raise }
        | OPEN exp CLOSE        { $2 }
;

%%
