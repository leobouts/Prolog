zeta(K,N,X,Y,G) :- K=:=0,
				   G is Y+K.
				   
zeta(K,N,X,Y,G) :- N<K,
				   G is Y+K.
				   
zeta(K,N,X,Y,G) :- Y<K,
				   N =:= K,
				   G is X.
				   
zeta(K,N,X,Y,G) :- Y<K,
				   N =:= K+1,
				   G is N-2.
				   
zeta(K,N,X,Y,G) :- Y<K,
				   N >= K+2,
				   G is K.

zeta(K,N,X,Y,G) :- Y>=K,
				   N>=K,
				   K>=1,
				   I is N-K,
				   G is Y-K,
				   zeta(K,N,X,G,J),
				   zeta(K,I,X,J,L),
				   G is L.