from_data(Data, Tree):- from_data(Data, nil, Tree).

from_data([], Tree, Tree).
from_data([Cab|Resto], Act, Tree):- 
                    insertar(Cab, Act, NuevoAct),
                    from_data(Resto, NuevoAct, Tree).
                            
insertar(X, nil, tree_node(X, nil, nil)).

insertar(X, tree_node(Raiz, Izq, Der), tree_node(Raiz, NuevoIzq, Der)) :-
    X =< Raiz,
    insertar(X, Izq, NuevoIzq).

insertar(X, tree_node(Raiz, Izq, Der), tree_node(Raiz, Izq, NuevoDer)) :-
    X > Raiz,
    insertar(X, Der, NuevoDer).

to_data(nil, []).

to_data(tree_node(Raiz, Izq, Der), Data):- 
                                to_data(Izq, DataIzq),
                                to_data(Der, DataDer), 
                                append(DataIzq, [Raiz|DataDer], Data).


