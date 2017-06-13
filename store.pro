p1(I,J) :- purchase(I,A,C,E),
		   purchase(J,A,D,F).

p2(X,Y) :- item(A,X,G1,P1),
		   item(B,Y,G2,P2),
		   purchase(I,N,A,K),
		   purchase(J,N,B,L).

p3(C)   :- item(C,X,G1,P1),
           item(C1,X,G2,P2),
		   P1/G1>P2/G2.

p4(I,T) :- purchase(I,A,C,N),
		   item(C,L,G,P),
		   discount(A,D),
		   T is P*N - P*N*(D/100).

		   
item(n3001,coffee,100,1.25).
item(n3002,coffee,200,2.40).
item(n3205,sugar,500,1.80).
item(d1105,milk,500,0.65).
item(d1110,milk,1000,1.20).
item(k2105,bread,500,0.90).
item(k2110,bread,1000,1.80).
item(k2120,bread,2000,3.60).
item(z1005,water,500,0.35).
item(z1010,water,1000,0.80).
item(n3201,tea,100,1.48).

purchase(inv001,'Mickey Mouse',n3002,3).
purchase(inv002,'Mickey Mouse',n3205,1).
purchase(inv008,'Mickey Mouse',d1110,2).
purchase(inv004,'Donald Duck',d1105,15).
purchase(inv005,'Donald Duck',k2120,50).
purchase(inv003,'Lucky Luke',z1005,3).
purchase(inv006,'Cocco Bill',n3002,2).
purchase(inv007,'Lucky Luke',z1005,7).

discount('Mickey Mouse', 10).
discount('Donald Duck',25).
discount('Lucky Luke',35).
discount('Cocco Bill',0).
discount('Woody Woodpecker',5).