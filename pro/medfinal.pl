go:- write("Patient name: "),
    read(P),
    check_if(Disease),
    write(P),write("'s illness is: "),
    write(Disease),nl,undo.

check_if(pneumonia):- pneumonia, !.
check_if(allergy):- allergy, !.
check_if(chicken_pox):- chicken_pox, !.
check_if(flu):- flu, !.
check_if(tonsilitis):- tonsilitis, !.

pneumonia:-
    symptom(cough),
    symptom(fever),
    symptom("chest pain").

allergy:-
    symptom(cough),
    symptom(fever),
    symptom(cold),
    symptom(rash).

chicken_pox:-
    symptom(fever),
    symptom(weakness),
    symptom(rash),
    symptom("pain due to rash").

flu:-
    symptom(fever),
    symptom(headache),
    symptom(nausea),
    symptom(vomiting).

tonsilitis:-
    symptom(fever),
    symptom("sore throat").

ask(Question):-
    format("Does the patient experience ~w?", [Question]),
    read(Response), nl,
    (   (Response == yes; Response == y)
    ->  assert(yes(Question));
    assert(no(Question)), fail).
:- dynamic yes/1, no/1.

symptom(S):-
    (   yes(S) -> true;
    (   no(S) -> fail;
    ask(S))).

undo:- retract(yes(_)), fail.
undo:- retract(no(_)), fail.
undo.
