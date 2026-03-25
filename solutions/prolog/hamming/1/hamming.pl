hamming_distance([], [], 0).
hamming_distance(Str1, Str2, Dist):- string_chars(Str1, LStr1),
                                     string_chars(Str2, LStr2),
                                     distanciaLStrs(LStr1, LStr2, Dist).
distanciaLStrs([], [], 0).
distanciaLStrs([Cab|R1], [Cab|R2], Dist):- distanciaLStrs(R1, R2, Dist).
distanciaLStrs([Cab1|R1], [Cab2|R2], Dist):- Cab1 \= Cab2,
                                             distanciaLStrs(R1, R2, Dist1),
                                             Dist is Dist1 + 1.
