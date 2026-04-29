convert(N, Sounds) :-
    number_string(N, Sounds).
    
convert(N, Sounds):- raindrop3(N, S1),
                     raindrop5(N, S2),
                     raindrop7(N, S3),
                     string_concat(S1, S2, S4),
                     string_concat(S4, S3, Sounds).

raindrop3(N, "Pling"):- 0 is N mod 3.
raindrop3(_, "").

raindrop5(N, "Plang"):- 0 is N mod 5.
raindrop5(_, "").

raindrop7(N, "Plong"):- 0 is N mod 7.
raindrop7(_, "").