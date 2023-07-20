father(adam,jofy).
father(adam,lily).
female(jofy).
female(lily).
male(adam).
sibling(SC1,SC2):-father(F,SC1),father(F,SC2),male(F).
daughter(C1,C2):-female(C1),female(C2),sibling(C1,C2).
