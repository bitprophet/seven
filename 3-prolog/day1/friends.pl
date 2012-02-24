likes(jeff, cats).
likes(danielle, figures).
likes(mosey, cats).

friend(X, Y) :- \+(X = Y), likes(X, Z), likes(Y, Z).
