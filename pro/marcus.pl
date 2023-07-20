man(marcus).
man(john).
indian(marcus).
not(indian(john)).
not(P):-P,!,fail;true.
die(X,Now):-indian(X),gt(Now,79),write(X),write(" is dead.").
gt(OP1,OP2):-OP1>OP2.
alive(X,Now):-not(die(X,Now)),write(X),write(" is alive").
