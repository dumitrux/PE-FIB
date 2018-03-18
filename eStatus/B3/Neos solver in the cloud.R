#PREGUNTA 1 --- POISSON
landa = 4.4
n = 3
ppois(n-1,landa)		# P < n
1-ppois(n,landa)		# P > n

#PREGUNTA 2
n = 7
dpois(n,landa)		# P(X=n)

#PREGUNTA 3
tiempo = 2
n = 14
dpois(n,landa*tiempo)

#PREGUNTA 4
1/landa*60

#PREGUNTA 5
t = 8
n = 0
dpois(n,landa*t/60)

#PREGUNTA 6
n = 8
p = 0.05
num_prob = 1
k = 1
1-pbinom(k,n,p)