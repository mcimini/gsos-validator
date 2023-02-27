%{
  open Language
%}

%token <string> ID


%token TRUE
%token FALSE
%token SKIP
%token RULE
%token PREM
%token CONCL
%token ERROR
%token LIST
%token APPEND
%token IF
%token THEN
%token ELSE
%token ISVAR
%token GETVARS
%token NOT
%token AND
%token OR
%token EQUAL
%token UNIQUE
%token SELECT
%token LPAREN
%token RPAREN
%token COMMA
%token LSQUARE
%token RSQUARE
%token COLON
%token STEP
%token LEFTOFSTEP
%token NOSTEP 
%token NEXT
%token MAP
%token IN
%token STRING
%token MATCH
%token WITH
%token ARROW
%token OTHERWISE
%token MUST
%token MID
%token LTsources
%token LTsource
%token LTtargets
%token LTtarget
%token DOT
%token SUBLIST
%token DISTINCT


%token EOF

%start fileOne
%type <(Language.e)> fileOne

%start file
%type <(Language.e list)> file

%%

fileOne:
  | e = expression EOF
  	{ TRUE }


file:
  | EOF
    { [] }
  | e = expression EOF
    { [e] }
  | e = expression lst = file
    { e :: lst }


expression : 
	| TRUE 
	{ TRUE }
	| FALSE
	{ FALSE }
	| SKIP
	{ TRUE }
	| PREM
	{ PREM }
	| PREM DOT LTsources
	{ APPEND(SELECT(PREM,PFORMULA("step", [PVAR "P" ; PVAR "L" ; PVAR "P'"]), ID "P"), SELECT(PREM,PFORMULA("nstep", [PVAR "P" ; PVAR "L"]), ID "P")) }
	| PREM DOT LTtargets
	{ SELECT(PREM,PFORMULA("step", [PVAR "P" ; PVAR "L" ; PVAR "P'"]), ID "P'") }
	| CONCL
	{ CONCL }
	| CONCL DOT LTsource
	{ HEAD(SELECT(LIST [CONCL],PFORMULA("step", [PVAR "P" ; PVAR "L" ; PVAR "P'"]), ID "P")) }
	| CONCL DOT LTtarget
	{ HEAD(SELECT(LIST [CONCL],PFORMULA("step", [PVAR "P" ; PVAR "L" ; PVAR "P'"]), ID "P'")) }
	| ERROR STRING words = list(word) STRING
	{ ERROR(String.concat " " words) }
	| LSQUARE es = separated_list(COMMA, expression) RSQUARE
	{ LIST(es) }
	| MAP LPAREN e1 = expression COMMA e2 = expression RPAREN
	{ MAP(e1, e2) }
	| RULE LSQUARE STEP RSQUARE COLON e = expression
	{ RULE(e) }
	| IF e1 = expression THEN e2 = expression ELSE e3 = expression 
	{ IF(e1,e2,e3) }
	| ISVAR LPAREN e = expression RPAREN
	{ ISVAR(e) }
	| GETVARS LPAREN e = expression RPAREN
	{ GETVARS(e) }
	| UNIQUE LPAREN e1 = expression COMMA nameMap = ID COMMA tag = ID RPAREN NEXT LPAREN uniq = ID COMMA newpremises = ID RPAREN COLON e2 = expression
	{ UNIQUE(e1, ID(nameMap), uniq, newpremises, e2) }
	| MATCH e1 = expression WITH p = pattern ARROW e2 = expression 
	{ IF(EQUAL(LIST([]),SELECT(LIST([e1]),p,e2)),TRUE,TRUE) }
	| MATCH e1 = expression WITH p = pattern ARROW e2 = expression OTHERWISE e3 = expression
	{ IF(EQUAL(LIST([]),SELECT(LIST([e1]),p,e2)),e3,TRUE) }
	| MATCH e1 = expression WITH p = pattern OTHERWISE e2 = expression
	{ IF(EQUAL(LIST([]),SELECT(LIST([e1]),p,TRUE)),e2,TRUE) }
	| DISTINCT e1 = expression OTHERWISE e2 = expression
	{ UNIQUE(SELECT(e1,PVAR "Var", FORMULA(Formula("step",[LangVar "Var"]))), ID "mode", "u", "n", IF(EQUAL(ID "u", MAP(LIST [],LIST [])),TRUE,e2)) }
	| e1 = expression LSQUARE p = pattern RSQUARE COLON e2 = expression
	{ SELECT(e1,p, e2) }
	| e1 = expression MUST MATCH MID p1 = pattern MID p2 = pattern OTHERWISE e2 = expression 
	{ IF(EQUAL(LISTDIFF(LISTDIFF(e1,SELECT(e1,p1, ID("self"))),SELECT(e1,p2, ID("self"))),LIST []),e1,e2) }
	/* alternative { IF(EQUAL(e1,APPEND(SELECT(e1,p1, ID("self")),SELECT(e1,p2, ID("self")))),e1,e2) } */
	| e1 = expression APPEND e2 = expression
	{ APPEND(e1,e2) }
	| e1 = expression SUBLIST e2 = expression
	{ EQUAL(LISTDIFF(e1,e2), LIST []) }
	| e1 = expression IN e2 = expression
	{ IN(e1,e2) }
	| e1 = expression EQUAL e2 = expression
	{ EQUAL(e1,e2) }
	| e1 = expression AND e2 = expression
	{ AND(e1,e2) }
	| e1 = expression OR e2 = expression
	{ OR(e1,e2) }
	| NOT LPAREN e = expression RPAREN
	{ NOT(e) }
	| var = ID
	{ ID(var) }
	| metavar1 = ID LEFTOFSTEP label = ID STEP metavar2 = ID
	{ FORMULA(Formula("step", [LangVar metavar1 ; LangVar label ; LangVar metavar2])) }
	| metavar1 = ID NOSTEP label = ID STEP 
	{ FORMULA(Formula("nstep", [LangVar metavar1 ; LangVar label])) }
	| LPAREN e = expression RPAREN
	{ e }


pattern : 
	| var = ID
	{ PVAR(var) }
	| LPAREN op = ID args = list(pattern) RPAREN
	{ PCONSTR(op, args) }
	| source = pattern LEFTOFSTEP label = pattern STEP metavar2 = ID
	{ PFORMULA("step", [source ; label ; PVAR metavar2]) }
	| source = pattern NOSTEP label = pattern STEP 
	{ PFORMULA("nstep", [source ; label]) }
//*	{ PFORMULA("nstep", [source ; PVAR "L"]) } *//
	| LSQUARE RSQUARE
	{ PEMPTY }

word: 
	| str = ID
	{ str }
	| IN
	{ "in" }
	| CONCL
	{ "conclusion" }
	| PREM
	{ "premises" }
	| NOT
	{ "not" }
	| AND
	{ "and" }
	| OR
	{ "or" }
	| MUST
	{ "must" }
	| COMMA
	{ "," }
	| WITH
	{ "with" }
	
