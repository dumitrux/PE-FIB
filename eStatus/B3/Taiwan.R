# X~Exp(landa)
Eexp = 15
landa = 1/Eexp

# Y~N(E,o)
En = 2.39
o = 0.042

# PREGUNTA 1
t1 = 1
t2 = 11
1-pexp(t2-t1,landa)

# PREGUNTA 2
t1 = 2
t2 = 17
pexp(t2,landa)-pexp(t1,landa)

# PREGUNTA 3
prob = 0.2
qexp(prob,landa)

# PREGUNTA 4
prob = 0.76
t = 3
landa_new = -log(prob)/t
E_new = 1/landa_new
E_new;


# PREGUNTA 5
k = 2.411
Z = (k-En)/o; Z
1-pnorm(Z)

# PREGUNTA 6
k = 2.313
Z = (k-En)/o; Z
pnorm(-Z)	#P(X<K) si Z>=0
pnorm(Z)	#P(X<k) si Z<0

# PREGUNTA 7
prob = 0.817
qnorm(prob,En,o)