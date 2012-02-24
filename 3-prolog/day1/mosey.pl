mosey(tuna, tuna).
mosey(salmon, tuna).
mosey(playins, tuna).
mosey(string, tuna).
mosey(grapefruit, grapefruit).
mosey(brushins, grapefruit).
mosey(claw_trimmins, grapefruit).

mosey_likes(X, Y) :- mosey(X, tuna).
