string_reverse([],[]).
string_reverse(Cadena, CadInv):- 
    string_codes(Cadena, ListCadena),
    reverse_custom(ListCadena, ListInv),
    string_codes(CadInv, ListInv).

reverse_custom([],[]).
reverse_custom([Cab|Resto], ListInv):- reverse_custom(Resto, R), append(R, [Cab], ListInv).
