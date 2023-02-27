# GSOS-Validator

Author: Matteo Cimini (matteo_cimini@uml.edu)
	<br />
# <a name="instructions"></a>Instructions 
<br />

Requirements: 
<br />
<ul>
<li> To compile and run: Ocaml with the Batteries and Menhir packages is required.
</ul>

Quick usage: 
<br />
<ul>
<li> make 
<li> ./lnc gsos.tr languages/
</ul>

What it does:  <br />
<ul>
<li> Applies GSOS-Validator, as specified in <b>gsos.tr</b>, to all the language definitions .lan of the folder "languages". 
<li> for each .lan file, say, myfile.lan, 
	<br /> if it is a GSOS language: our tool displays the message "<i>myfile.lan is a GSOS language.</i>"
	<br /> if it is not a GSOS language: our tool provides an error message. 
</ul>

To clean: <br />
<ul>
<li> make clean 
	<br /> (removes compilation files and executable) 
</ul>
<br />



# <a name="negative"></a>Our negative tests 

To run our negative tests:  
<br />
<ul>
<li> ./lnc gsos.tr negative-tests/ 
</ul> 

Folder negative-tests/ contains: 

```
-- test1.lan -- 
contains the rule (a P) --> P. That is, an ordinary transition rather than a labeled transition.
output: 
test1.lan: is not a GSOS language: Rule #1: Conclusion formulae must be positive labeled transitions with a constant label and must apply to an operator

-- test2.lan -- 
contains the rule X --(a)--> X. That is, the rule does not apply to a form (op P1 P2 ...)
output: 
test2.lan: is not a GSOS language: Rule #1: Conclusion formulae must be positive labeled transitions with a constant label and must apply to an operator

-- test3.lan -- 
premise of rule #2 is P1 --> P1'. That is, an ordinary transition rather than a labeled transition.
output: 
test3.lan: is not a GSOS language: Rule #2: Premises must be either positive labeled transitions or negative labeled transitions , and their label must be a constant

-- test4.lan -- 
contains the rule (a (a P)) --(a)--> P. That is, conclusion is not of the form a form (op P1 P2 ...) for variables P1, P2, ... 
output: 
test4.lan: is not a GSOS language: Rule #1: The operator that is the subject of the conclusion must have all metavariables as arguments

-- test5.lan -- 
contains the rule (a P) -- P --> P. That is, label of conclusion is not a constant
output: 
test5.lan: is not a GSOS language: Rule #1: Conclusion formulae must be positive labeled transitions with a constant label and must apply to an operator

-- test6.lan -- 
contains the rule for the replication operator (repl P) --(a)--> P' <== (par (repl P)) --(a)--> P'. That is, source of premise is not a variable
output: 
test6.lan: is not a GSOS language: Rule #4: Sources of premises must be arguments of the operator in the source of the conclusion

-- test7.lan -- 
premise of rule #2 is (a P) --(a)--> P1'. That is, source of premise is not a variable
output: 
test7.lan: is not a GSOS language: Rule #2: Sources of premises must be arguments of the operator in the source of the conclusion

-- test8.lan -- 
premise of rule #2 is P1 -- P1 --> P1'. That is, label of premise is not a constant
output: 
test8.lan: is not a GSOS language: Rule #2: Premises must be either positive labeled transitions or negative labeled transitions, and their label must be a constant

-- test9.lan -- 
premise of rule #2 is P1 --(a)--> (a P). That is, target of premise is not a variable
output: 
test9.lan: is not a GSOS language: Rule #2: Premises must be either positive labeled transitions or negative labeled transitions, and their label must be a constant

-- test10.lan -- 
rule #2 is (par P1 P2) --(a)--> (par P1' P2) <== P1' --(a)--> P1'. That is, the source P1' of the premise is not from the source of the conclusion
output:
testn-10.lan: is not a GSOS language: Rule #2: Sources of premises must be arguments of the operator in the source of the conclusion

-- test11.lan -- 
rule #2 is (par P1 P2) --(a)--> (par P1 P2) <== P1 --(a)--> P2. That is, the target P2 of the premise is not distinct from the variables in the source of the conclusion 
output:
testn-11.lan: is not a GSOS language: Rule #2: The arguments of the operator in the source of the conclusion and the targets of the premises must all be distinct metavariables

-- test12.lan -- 
rule #2 is (par P1 P2) --(a)--> (par P1' P3) <== P1 --(a)--> P1'. That is, P3 in the conclusion is not from the targets of premises not the source of the conclusion 
output:
testn-12.lan: is not a GSOS language: Rule #2: The metavariables in the target of the conclusion must come from the source of the conclusion or from the targets of premises

-- test13.lan -- 
premise of rule #3 is P2 -/-(a)--> P3. That is, it is not a valid shape of negative labeled transition formula. 
output:
testn-13.lan: is not a GSOS language: Rule #3: Premises must be either positive labeled transitions or negative labeled transitions, and their label must be a constant

-- test14.lan -- 
rule #3 is (sequence P1 P2) --(a)--> P2' <== P2 --(a)--> P2' /\ P2' -/-(a)-->. That is, the source of the negative premise does not come from the source of the conclusion 
output:
testn-14.lan: is not a GSOS language: Rule #3: Sources of premises must be arguments of the operator in the source of the conclusion

```




