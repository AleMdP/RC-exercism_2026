alfabeto(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']).

pangram(Sentence):- string_upper(Sentence, StringMayus),
                    string_chars(StringMayus, ListaCadena),
                    alfabeto(Alf),
                    calcularPangrama(Alf, ListaCadena).
                    
calcularPangrama([], _).
calcularPangrama([Cab|Resto], ListaCad):- member(Cab, ListaCad),
                                          calcularPangrama(Resto, ListaCad).
   