:- use_module(library(clpfd)).

reglas(Vecinos) :-
    Vecinos = [Amara, Bjorn, Cora, Dale, Emiko],
    Vecinos ins 1..5,
    all_distinct(Vecinos),
    Amara #\= 5,
    Bjorn #\= 1,
    Cora #\= 1,
    Cora #\= 5,
    abs(Cora - Bjorn) #> 1,
    Dale #> Bjorn,
    abs(Emiko - Cora) #> 1,
    label(Vecinos).

floor(amara, Amara) :- 
    reglas([Amara, _, _, _, _]).

floor(bjorn, Bjorn) :- 
    reglas([_, Bjorn, _, _, _]).

floor(cora, Cora) :- 
    reglas([_, _, Cora, _, _]).

floor(dale, Dale) :- 
    reglas([_, _, _, Dale, _]).

floor(emiko, Emiko) :- 
    reglas([_, _, _, _, Emiko]).

