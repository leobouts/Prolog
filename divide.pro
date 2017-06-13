nat(0).
nat(s(X)):- nat(X).

divide(X,0,D):- fail.

divide(X,s(Y),s(D)) :- nat(s(X)),
                       nat(s(Y)),
					   nat(s(Z)),
                       D is X//Y.