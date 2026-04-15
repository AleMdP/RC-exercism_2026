isogram("").
isogram(Pal):- 
    string_lower(Pal, Min),
    string_chars(Min, LPal),
    include(is_alpha, LPal, LPalI),
    sort(LPalI, LPalS),
    length(LPalI, N1),
    length(LPalS, N2),
    N1 =:= N2.