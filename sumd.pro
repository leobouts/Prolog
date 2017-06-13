sumd(N,S) :- sumHelper(N, 1, SUM), S is SUM + N .

sumHelper(N, N, 0) .
sumHelper(N, K, SUMA) :- N mod K =:= 0,
                        F is K+1, 
                        sumHelper(N, F, D),                        
                        SUMA is K + D .

sumHelper(N, K, SUMA) :- N mod K \= 0, 
                        F is K+1,
                        sumHelper(N, F, D), 
                        SUMA is D .