valid_user(app).
valid_pass(abc).

userip:- check_no_times(3).

check_no_times(0):- write('You have reached maximum number of tries.').
check_no_times(L):-  nl, repeat, write('Enter the username: '), read(N), write('Enter the password: '), read(P), (login(N,P) ->  write('Valid username and password'), !;not(login(N,P)) -> K is L-1, write('Invalid username or password'), nl, check_no_times(K)).

login(M,Q):- valid_user(M),valid_pass(Q).
