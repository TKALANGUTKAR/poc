father(adam,jack).
father(adam,john).
male(adam).
male(jack).
male(john).
sibling(SB1,SB2):-father(F,SB1),father(F,SB2),male(F).
brother(B1,B2):-male(B1),male(B2),sibling(B1,B2).