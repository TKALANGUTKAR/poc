% Create a login page using cut, recursion and repeat. Maximum tries are
% 3.

valid_user(root).
valid_pass(abc).

userip :- check_no_times(3).

check_no_times(0) :-
    write('You have reached the maximum number of tries.').

check_no_times(L) :-
    L > 0,
    nl,    %New Line/Next Line -> \n
    repeat,
    write('Enter the username: '), read(N),
    write('Enter the password: '), read(P),
    (login(N, P) ->
        write('Valid Username and Password'), ! %Cut ! -> Acts like break
    ;
        K is L - 1,
        write('Invalid username or password.'), nl,
        check_no_times(K) %Calling the check_no_times() -> Recursion
    ).

login(M, Q) :-
    valid_user(M),
    valid_pass(Q).
