score_value(X, 10):- X=< 1.
score_value(X, 5):- X > 1, X =< 5.
score_value(X, 1):- X > 5, X =< 10.
score_value(X, 0):- X > 10.

score(X, Y, S):- R is sqrt(X*X+Y*Y), score_value(R, S).
