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

-- test2.lan -- 
contains the rule X --(a)--> X. That is, the rule does not apply to a form (op P1 P2 ...)

-- test3.lan -- 
premise of rule #2 is P1 --> P1'. That is, an ordinary transition rather than a labeled transition.

-- test4.lan -- 
contains the rule (a (a P)) --(a)--> P. That is, not of the form a form (op P1 P2 ...) for variables P1, P2, ... 

-- test5.lan -- 
contains the rule (a P) -- P --> P. That is, label of conclusion is not a constant

-- test6.lan -- 
contains the rule for the replication operator (repl P) --(a)--> P' <== (par (repl P)) --(a)--> P'. That is, source of premise is not a variable

-- test7.lan -- 
premise of rule #2 is (a P) --(a)--> P1'. That is, source of premise is not a variable

-- test8.lan -- 
premise of rule #2 is P1 -- P1 --> P1'. That is, label of premise is not a constant

-- test9.lan -- 
premise of rule #2 is P1 --(a)--> (a P). That is, target of premise is not a variable

-- test10.lan -- 
rule #2 is (par P1 P2) --(a)--> (par P1' P2) <== P1' --(a)--> P1'. That is, the source P1' of the premise is not from the source of the conclusion

-- test11.lan -- 
rule #2 is (par P1 P2) --(a)--> (par P1 P2) <== P1 --(a)--> P2. That is, the target P2 of the premise is not distinct from the variables in the source of the conclusion 

-- test12.lan -- 
rule #2 is (par P1 P2) --(a)--> (par P1' P3) <== P1 --(a)--> P1'. That is, P3 in the conclusion is not from the targets of premises not the source of the conclusion 

-- test13.lan -- 
premise of rule #3 is P2 -/-(a)--> P3. That is, it is not a valid shape of negative labeled transition formula. 

-- test14.lan -- 
rule #3 is (sequence P1 P2) --(a)--> P2' <== P2 --(a)--> P2' /\ P2' -/-(a)-->. That is, the source of the negative premise does not come from the source of the conclusion 
```




