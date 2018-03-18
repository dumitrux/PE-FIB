# El izquierda/derecha en la fila indica en que columna
# está el valor de la humedad de las lentillas New
New = c(40.9,32.9,45.2,27.4,49.3,36.8,56.7,57.6,45.3,61.5,64.7,42,56.8,99.4)
Ref = c(29,23.2,42.4,34.2,27.8,32.9,46.1,49.2,42.4,54,53.4,32.4,45.6,100.2)
nN = length(New); nN
nR = length(Ref); nR

# PREGUNTA 1
muN = mean(New); muN
muR = mean(Ref); muR

# PREGUNTA 2
D = New-Ref; D
muD = mean(D); muD

# PREGUNTA 3
sD = sd(D); sD

# PREGUNTA 4
nD = length(D)
se = sD/sqrt(nD); se

# PREGUNTA 5
t = muD/(sD/sqrt(nD)); t

# PREGUNTA 6
grados = nD-1; grados

# PREGUNTA 7
P = 2*(1-pt(t,grados)); P	# t>=0
P = 2*pt(t,grados); P		# t<0

# PREGUNTA 8
alfa5 = 0.05	# si P<alfa1 => rechazar H0 con alfa5
alfa1 = 0.01	# si P<alfa1 => rechazar H0 con alfa1

# PREGUNTA 9
prob = 0.90
alfa = 1-prob; alfa
t = qt(1-alfa/2,nD-1); t
c(muD-t*sD/sqrt(nD),muD+t*sD/sqrt(nD))