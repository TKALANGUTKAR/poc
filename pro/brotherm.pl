mother(lyn,jack).
mother(lyn,john).
female(lyn).
male(jack).
male(john).
sibling(SB1,SB2):-mother(M,SB1),mother(M,SB2),female(M).
brother(B1,B2):-male(B1),male(B2),sibling(B1,B2).
