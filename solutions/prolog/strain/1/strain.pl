keep(_, [], []).
keep(Goal, [Cab|Resto], [Cab|Filtered]):- call(Goal, Cab),
                                          keep(Goal, Resto, Filtered).
keep(Goal, [Cab|Resto], Filtered):- \+ call(Goal, Cab),
                                    keep(Goal, Resto, Filtered).

discard(_, [], []).
discard(Goal, [Cab|Resto], Filtered):- call(Goal, Cab),
                                       discard(Goal, Resto, Filtered).
discard(Goal, [Cab|Resto], [Cab|Filtered]):- \+ call(Goal, Cab),
                                             discard(Goal, Resto, Filtered).
