#### PREGUNTA 7 i 8


# B
nB = 9
muB = 53.88889
sB = 16.97384

# W
nW = 9
muW = 52.33333
sW = 13.43503

# PREGUNTA 1
s2 = ((nB-1)*sB^2+(nW-1)*sW^2)/((nB-1)+(nW-1)); s2

# PREGUNTA 2
s = sqrt(s2); s
se = s*sqrt(1/nB+1/nW); se 

# PREGUNTA 3
t = (muB-muW)/se; t

# PREGUNTA 4
# No es pot assegurar res

# PREGUNTA 5
sT = 14
t2 = (muB-muW)/(sT*sqrt(1/nB+1/nW)); t2

# PREGUNTA 6
P = 2*(1-pnorm(t2)); P		# t >= 0
P = 2*pnorm(t2); P		# t < 0

# PREGUNTA 7
alfa = 0.10
qf(1-alfa/2,nB-1,nW-1)

# PREGUNTA 8
sB^2/sW^2		# si es < qf => no podem rebutjar H0
			# és versemblant que els dos equips presentint homogeneïtat

# PREGUNTA 9
prob = 0.99
alfa = 1-prob; alfa
t = qt(1-alfa/2,nB+nW-2); t
c(muB-muW-t*se,muB-muW+t*se)





