trans('G','C').
trans('C','G').
trans('T','A').
trans('A','U').

rna_transcription(Dna, Rna):- 
    string_chars(Dna, ListDna),
    custom_transcription(ListDna, ListRna),
    string_chars(Rna, ListRna).

custom_transcription([], []).
custom_transcription([D|Ds], [R|Rs]) :-
    trans(D, R),
    custom_transcription(Ds, Rs).
