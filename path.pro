path(X,Y) :- link(X,Y).

path(X,Y) :- link(X,Z),
			 path(Z,Y).

biconnected(X,Y) :- link(X,Y),
					link(X,Z),
					path(Z,Y).

meetpoint(S1,D1,S2,D2,X) :- source(S1),
							source(S2),
							destination(D1),
							destination(D2),
							path(S1,X),
							path(S2,X),
							path(X,D1),
							path(X,D2).

source(a).
source(b).
source(c).

destination(x).
destination(y).
destination(z).

link(a,d).
link(a,e).
link(b,d).
link(b,f).
link(c,f).
link(c,g).
link(c,q).
link(d,h).
link(d,i).
link(e,j).
link(f,k).
link(f,w).
link(g,l).
link(h,i).
link(i,p).
link(i,x).
link(j,x).
link(j,y).
link(j,z).
link(k,y).
link(l,m).
link(m,n).
link(n,o).
link(o,i).
link(p,y).
link(q,r).
link(r,s).
link(r,u).
link(s,t).
link(t,u).
link(u,x).
link(v,z).
link(w,v).
link(w,z).							