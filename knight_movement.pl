moves(1,7).
moves(1,10).
moves(2,8).
moves(2,9).
moves(2,11).
moves(3,5).
moves(3,10).
moves(3,12).
moves(4,6).
moves(4,11).
moves(5,3).
moves(5,11).
moves(5,14).
moves(6,4).
moves(6,12).
moves(6,13).
moves(6,15).
moves(7,1).
moves(7,9).
moves(7,14).
moves(7,16).
moves(8,2).
moves(8,10).
moves(8,15).
moves(9,2).
moves(9,7).
moves(9,15).
moves(10,1).
moves(10,3).
moves(10,8).
moves(10,16).
moves(11,2).
moves(11,4).
moves(11,5).
moves(11,13).
moves(12,3).
moves(12,6).
moves(12,14).
moves(13,6).
moves(13,11).
moves(14,5).
moves(14,7).
moves(14,12).
moves(15,6).
moves(15,8).
moves(15,9).
moves(16,7).
moves(16,10).


path(X,Y):-moves(X,Y),write("Path is: "),
    write(X),write("->"),write(Y),!
    ;
    paths(X,Y).

paths(M,O):-moves(M,N),moves(N,O),write("Path is: "),
    write(M),write("->"),write(N),write("->"),write(O),!
    ;
    pathss(M,O).

%pathss(A,D):-





