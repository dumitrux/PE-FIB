# PREGUNTA 1 ### FUNCIONA :D
n = 370		# total captchas
k = 60		# enciertos de captchas
prob = 0.90

P = k/n; P
alfa = 1-prob; alfa
Z = qnorm(1-alfa/2); Z
c(P-Z*sqrt(P*(1-P)/n),P+Z*sqrt(P*(1-P)/n))

# PREGUNTA 2
prob = 0.95
ampl = 0.043
prop = 0.20

alfa = 1-prob; alfa
Z = qnorm(1-alfa/2); Z
ampl2 = ampl/2
P = prop
n_new = (P*(1-P))/(ampl2/Z)^2; n_new

# PREGUNTA 3
n_new = 0.5^2/((ampl2/Z)^2); n_new

# PREGUNTA 4
ic = c(0.1116,0.1549)
prob = 0.90

amplada = ic[2]-ic[1]; amplada
ampl2 = amplada/2
P = ic[1]+ampl2; P

alfa = 1-prob; alfa;
Z = qnorm(1-alfa/2); Z
n_new = P*(1-P)/((ampl2/Z)^2); n_new

# PREGUNTA 5 ###FUNCIONA :D
pi = 0.16
P = k/n
Z = (P-pi)/sqrt(pi*(1-pi)/n); Z

# PREGUNTA 6 ---- Solución: 0.1238122
Z = abs(Z)
pnorm(-Z)+(1-pnorm(Z))