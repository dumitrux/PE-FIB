n1 = 525
n2 = 100
p2 = 0.1588

#PREGUNTA 1

#PREGUNTA 2
t1 = 5	# anys
t2 = 3	# mesos
t = t1+t2/12; t
landa_n1 = -log(p2)
landa_n2 = landa_n1*(n1/n2)
landa_n2_t = landa_n2*t; landa_n2_t

#PREGUNTA 3
prob = 0.02
qpois(1-prob,landa_n2_t)

#PREGUNTA 4
t = 3
prob = 0.01
landa_n2_t = landa_n2*t
qpois(1-prob,landa_n2_t)

#PREGUNTA 5
t = 3.5
n = 48
landa_n2_t = landa_n2*t
mu = landa_n2_t
o = sqrt(landa_n2_t)
mu; o
1-pnorm(n,mu,o)

#PREGUNTA 6
t = 3
n = 39
cost = 1415

landa_n2_t = landa_n2*t
mu = landa_n2_t
o = sqrt(landa_n2_t)
mu; o
(1-pnorm(n,mu,o))*cost