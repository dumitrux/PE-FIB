mu = 10
dades <- read.delim("clipboard"); dades
n = length(dades$bat); n

# PREGUNTA 1
V = 4
sigma = sqrt(V); sigma
Z = (mean(dades$bat)-mu)/(sigma/sqrt(n)); Z

# PREGUNTA 2
P = 2*(1-pt(Z,n-1)); P
# P > 0.05(alfa) => No tenemos evidencias para dudar de H
# P < 0.05(alfa) => Rechazo H

# PREGUNTA 3
sd(dades$bat)

# PREGUNTA 4
t = (mean(dades$bat)-mu)/(sd(dades$bat)/sqrt(n)); t

# PREGUNTA 5
1-pt(t,n-1)		# t>=0

# PREGUNTA 6
# si p5 < alfa=0.05 => podemos afirmar que las baterias duran más que la media
				# el rendimiento ha mejorado

# PREGUNTA 7
prob = 0.99
t.test(dades$bat,conf.level=prob)

# PREGUNTA 8
prob = 0.99
amplada = 40		# distancia entre extremo superior e inferior
sigma = 98

alfa = 1-prob; alfa
Z = qnorm(1-alfa/2); Z
n = (2*Z*sigma/amplada)^2; n
