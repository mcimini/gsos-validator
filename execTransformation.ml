open Batteries
open Option
open List
open Language
					
let rec execTransformation (lan : language) (tr : e) = match tr with 
	| TRUE -> TRUE
	| FALSE -> FALSE
	| RULE(e) -> 	let rules = language_getReductionRules lan in 
					let premises = List.map rule_getPremises rules in 
					let premises = List.map (fun l -> LIST(List.map tr_to_formula l)) premises in (* coerce list of list of formula into list of LIST of FORMULA *)
					let conclusions = List.map rule_getConclusion rules in 
					let conclusions = List.map tr_to_formula conclusions in  (* coerce list of formula into list of e (FORMULA) *)
					let paired = List.combine premises conclusions in 
					let es_forEachRule = List.map (substitution_double_pair_on_pair e ("PREM", "CONCL")) paired in 					
				   		LIST(List.mapi (execTransformation_with_rule_number lan) es_forEachRule)
(*	| LIST(e) -> LIST(execTransformation lan e) *)
	| LIST(l) -> LIST(l)
	| HEAD(e) -> let l = tr_getList (execTransformation lan e) in List.hd l
	| APPEND(e1,e2) -> 	let l1 = tr_getList (execTransformation lan e1) in 
						let l2 = tr_getList (execTransformation lan e2) in 
							LIST(l1 @ l2)
	| LISTDIFF(e1,e2) -> let list_difference a b = let notpresent x = not (List.mem x b) in List.filter notpresent a in 
						let l1 = tr_getList (execTransformation lan e1) in 
						let l2 = tr_getList (execTransformation lan e2) in 
						if false then raise(Failure ("execTransformation, LISTDIFF: " ^ print_e (LIST l1) ^  print_e (LIST l2))) else
							LIST(list_difference l1 l2)
	| IN(e1,e2) -> 	let v = execTransformation lan e1 in 
					let l = tr_getList (execTransformation lan e2) in 
					if false then raise(Failure ("execTransformation: " ^ print_e v ^ " -- " ^ dump l)) else
					if List.mem v l then TRUE else FALSE					
	| FORMULA(f) -> FORMULA(f)
	| TERM(t) -> TERM(t)
	| IF(e1,e2,e3) -> (match execTransformation lan e1 with 
						| TRUE -> execTransformation lan e2
						| FALSE -> execTransformation lan e3 )
	| ISVAR(e) -> (  match execTransformation lan e with TERM(t) -> if term_isVar t then TRUE else FALSE  )
	| NOT(e) -> (  match execTransformation lan e with TRUE -> FALSE | FALSE -> TRUE  )
	| AND(e1,e2) -> if List.filter (fun x -> x = FALSE) [execTransformation lan e1 ; execTransformation lan e2] = [] then TRUE else FALSE 
(*	| MAP(e1,e2) -> 	let v1 = List.map (execTransformation lan) e1 in 
						let v2 = List.map (execTransformation lan) e2 in 
						MAP(v1,v2)
*)
	| MAP(e1,e2) -> 	let v1 = execTransformation lan e1 in 
						let v2 = execTransformation lan e2 in 
						MAP(v1,v2)	
	| EQUAL(e1,e2) -> 	let v1 = execTransformation lan e1 in 
						let v2 = execTransformation lan e2 in
						if false then raise(Failure ("execTransformation, EQUAL: " ^ print_e v1 ^  print_e v2)) else
						if v1 = v2 then TRUE else FALSE 
	| UNIQUE(e1,e2,uniq,map, e) -> 	let formulae = tr_getList (execTransformation lan e1) in 
									let premises = List.map tr_getFormula formulae in 
									let outputs = List.map (List.last) (List.map formula_getArguments premises) in 
									let outputsVars = List.concat (List.map term_getVariables outputs) in 
									if false then raise (Failure("execTransformation, UNIQUEFY: " ^ dump outputsVars)) else
									if outputsVars = (removeDuplicates outputsVars) then execTransformation lan (substitution (substitution e uniq (MAP(LIST [], LIST []))) map (TRUE)) else execTransformation lan (substitution (substitution e uniq (LIST([]))) map (TRUE))
	| SELECT(e1,p,e2) -> 	let l = tr_getList (execTransformation lan e1) in 
							let selectedAndNewExp2 = tr_select e2 p l in 
							if false then raise (Failure("execTransformation, SELECT: " ^ print_e (LIST(List.map (execTransformation lan) selectedAndNewExp2)))) else
								LIST(List.map (execTransformation lan) selectedAndNewExp2)
	| GETVARS(e) -> if false then raise(Failure ("execTransformation, getVars: e = " ^ print_e e)) else
		(  match execTransformation lan e with TERM(t) -> LIST(List.map tr_to_term (term_getVariables t))  )
	| ERROR(msg) -> raise(Failure ("Rule #" ^ string_of_int (!ruleCounter) ^ ": " ^ msg))
	| _ -> raise(Failure ("execTransformation, no match: " ^ dump tr))
and execTransformation_with_rule_number (lan : language) (i : int) (tr : e) = let _ = ruleCounter := (i+1) in execTransformation lan tr

