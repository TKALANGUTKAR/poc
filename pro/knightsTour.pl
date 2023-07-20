move(1,10). move(1,7).
move(2,9). move(2,11). move(2,8).
move(3,5). move(3,10). move(3,12).
move(4,11). move(4,6).
move(5,3). move(5,11). move(5,14).
move(6,4). move(6,12). move(6,15). move(6,13).
move(7,1). move(7,9). move(7,14). move(7,16).
move(8,2). move(8,10). move(8,15).
move(9,2). move(9,7). move(9,15).
move(10,1). move(10,3). move(10,8). move(10,16).
move(11,2). move(11,4). move(11,5). move(11,13).
move(12,3). move(12,6). move(12,14).
move(13,6). move(13,11).
move(14,5). move(14,7). move(14,12).
move(15,6). move(15,8). move(15,9).
move(16,7). move(16,10).

path(X,Y):- move(X,Y),write('Path is: '),write(X),write(' -> '),write(Y),!;paths(X,Y).

paths(L,N):- move(L,M), move(M,N),write('Path is: '),write(L),write(' -> '),write(M),write(' -> '),write(N),!;pathss(L,N).


pathss(A,D):- move(A,B), move(B,C), move(C,D),write('Path is: '),write(A),write(' -> '),write(B),write(' -> '),write(C),write(' -> '),write(D),!.

