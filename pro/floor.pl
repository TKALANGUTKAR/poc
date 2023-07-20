room(veranda).
room(hall).
room("dining room").
room(bedroom).
room(kitchen).
door(veranda,hall).
door(hall,veranda).
door(hall,kitchen).
door(hall,"dining room").
door(kitchen,hall).
door("dining room", hall).
door("dining room",bedroom).
door(bedroom,"dining room").
in(veranda,"shoe rack").
in(veranda,"flower pot").
in(hall,tv).
in(hall,sofa).
in(hall,table).
in(hall,vase).
in("dining room","dining table").
in("dining room",chair).
in(kitchen,fridge).
in(kitchen,utensils).
in(kitchen,oven).
in(kitchen,stove).
in(bedroom,bed).
in(bedroom,cupboard).
in(bedroom,mirror).
itemof(Q,P):-room(Q),in(Q,P).
connect(X,Y):-room(X),room(Y),door(X,Y).
getdata:-write('Enter a room: '),
    read(N),
    check_ip(N),
    display_op(N).
check_ip(M):-room(M).
display_op(L):-write("Adjacent rooms: "),
    forall(connect(L,A), print_rooms(A)).
print_rooms(B):-nl, tab(4),
    format('~w: ',[B]),
    get_items(B).
get_items(C):-forall(itemof(C,R),print_items(R)).
print_items(D):-nl,tab(8),format('~w',[D]).


