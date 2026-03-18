valor("black", 0).
valor("brown", 1).
valor("red", 2).
valor("orange", 3).
valor("yellow", 4).
valor("green", 5).
valor("blue", 6).
valor("violet", 7).
valor("grey", 8).
valor("white", 9).

value([C1, C2|Resto], V):-
    valor(C1, V1), valor(C2, V2),
    V is (V1 * 10) + V2.
