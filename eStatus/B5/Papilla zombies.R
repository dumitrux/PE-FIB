A = c(113, 98, 84, 43, 90, 59, 89, 75, 77, 64, 109)
B = c(41, 77, 102, 81, 53, 71, 71, 58, 60, 83)

# PREGUNTA 1
mean(A)-mean(B)	# si es negativo, B lleva ventaja
			# si es positivo, A lleva ventaja
			# si es muy cercano a 0, los dos van muy iguales

# PREGUNTA 2
muA = mean(A)
muB = mean(B)
nA = length(A)
nB = length(B)

s2 = (sum((A-muA)^2)+sum((B-muB)^2))/(nA+nB-2); s2
s = sqrt(s2); s

txt = 'varianza'
ifelse(txt=='varianza',s2,s)

# PREGUNTA 3
se = s*sqrt(1/nA+1/nB); se 

# PREGUNTA 4
t = (muA-muB)/(s*sqrt(1/nA+1/nB)); t

# PREGUNTA 5
P = 2*(1-pt(t,nA+nB-2)); P

# PREGUNTA 6
# Es evidente que B lo hace mejor
# Es evidente que A lo hace mejor
# Los dos sois igual de buenos
# AyB tienen el mismo nivel es verosímil --> P=0.69,0.17 y 1)A lleva ventaja
# Tú siempre eres el número 1

# PREGUNTA 7
prob = 0.85
alfa = 1-prob; alfa
t = qt(1-alfa/2,nA+nB-2); t
c((muA-muB)-t*sqrt(s2/nA+s2/nB),(muA-muB)+t*sqrt(s2/nA+s2/nB))
