custom_length([], 0).
custom_length([_], 1).
custom_length([Cab|Resto], L):- custom_length(Resto, L2),
                                L is L2 + 1.


custom_append([], L2, L2).
custom_append([Cab|R], L2, [Cab|RC]):- custom_append(R, L2, RC).


custom_concat([], []).
custom_concat([List], List).
custom_concat([List|Resto], R2):- custom_concat(Resto, R),
                                  custom_append(List, R, R2).


custom_reverse([], []).
custom_reverse([Cab|Resto], R):- custom_reverse(Resto, R2),
                                 custom_append(R2, [Cab], R).

                                 
custom_map(Goal, [], []).
custom_map(Goal, [Cab|Resto], R):- call(Goal, Cab, R2),
                                   custom_map(Goal, Resto, R3),
                                   custom_append([R2], R3, R).

     
custom_filter(Goal, [], []).
custom_filter(Goal, [Cab|Resto], R):- call(Goal, Cab),
                                      custom_filter(Goal, Resto, R2),
                                      custom_append([Cab], R2, R).
custom_filter(Goal, [_|Resto], R):- custom_filter(Goal, Resto, R).


custom_foldl(Goal, State, [], State).
custom_foldl(Goal, State, [Cab|Resto], Folded):- 
                            call(Goal, State, Cab, State2),
                            custom_foldl(Goal, State2, Resto, Folded).


custom_foldr(Goal, [], State, State).
custom_foldr(Goal, List, State, Folded):- 
                            custom_reverse(List, [CabR|RestoR]),
                            call(Goal, CabR, State, State2),
                            custom_reverse(RestoR, Lista),
                            custom_foldr(Goal, Lista, State2, Folded).





