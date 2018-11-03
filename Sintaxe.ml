type bop = Sub
		 | Add
		 | And
		 | Mult 
		 | Div 
		 | Eq 
		 | Neq (* Not equal*)
		 | Leq  (* less or equal*)
		 | Less  
		 | Geq  (* greater of equal*)
		 | Greater  
		 | Or 

type unop = Not

type expr = Ncte of int
		  | Bcte of bool
		  | Binop of bop * expr * expr
		  | Unop of nop * expr
		  | Pair of expr * expr 
		  | If of expr *  expr *  expr
		  | Var of variable
		  | App of expr * expr
		  | Lam of variable * expr
		  | Let of variable * expr * expr
		  | Lrec of variale * variable * expr * expr
		 (* | Fix of exp *)
		  | Nil
		  | Cons of expr * expr
		  | Hd of expr
		  | Tl of expr
		  | Raise
		  | Try of expr * expr