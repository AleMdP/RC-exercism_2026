%flatten_list(Xs, XsFlattened).
flatten_list([], []).
flatten_list([[L|Resto2]|Resto], ListaRN):- flatten_list([L|Resto2], ListaR),
                                            flatten_list(Resto, ListaR2),
                                            append(ListaR, ListaR2, ListaRN).
flatten_list([Elem|Resto], [Elem|ListaR]):- Elem \= null, 
                                            Elem \= nil,
                                            flatten_list(Resto, ListaR).
flatten_list([nil|Resto], ListaR):- flatten_list(Resto, ListaR).
flatten_list([null|Resto], ListaR):- flatten_list(Resto, ListaR).
flatten_list([[]|Resto], ListaR):- flatten_list(Resto, ListaR).