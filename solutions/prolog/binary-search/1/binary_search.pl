%find(List, Value, Index).
find([Elem], Elem, 0).

find(Lista, Elem, Pos) :-
    length(Lista, Len),
    N1 is Len // 2,
    length(Mitad1, N1),
    append(Mitad1, [Cab|Mitad2], Lista),
    Elem > Cab,
    find(Mitad2, Elem, Pos2),
    Pos is Pos2 + N1 + 1.
    
find(Lista, Elem, Pos) :-
    length(Lista, Len),
    N1 is Len // 2,
    length(Mitad1, N1),
    append(Mitad1, [Cab|Mitad2], Lista),
    Elem < Cab,
    find(Mitad1, Elem, Pos).
    
find(Lista, Elem, Pos) :-
    length(Lista, Len),
    N1 is Len // 2,
    length(Mitad1, N1),
    append(Mitad1, [Cab|Mitad2], Lista),
    Elem = Cab,
    Pos is N1.