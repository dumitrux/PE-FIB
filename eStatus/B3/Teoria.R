n = 18
p = 1/5
n; p;			# R~B(18,0.2)

E = n*p;
E;

q = 1-p;
V = n*p*q;
o = sqrt(V);
V; o;

dbinom(4,n,p)	# P(R=4)
dbinom(1,n,p)	# P(R=1)
pbinom(2,n,p)	# P(R<=2) = P(R<3)
1-pbinom(5,n,p)	# P(R>=6) = 1-P(R<6) = 1-P(R<=5)
