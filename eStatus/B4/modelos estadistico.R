# distribución t-Student
gradosT = 22
gradosS = 6
gradosR = 4
gradosQ = 44

# distribución Chi-Cuadrado
gradosX = 24
gradosY = 15
gradosU = 87

# PREGUNTA 1: 
k = -3.119	
1-pt(k,gradosT)		# Prob(T>k) = 1-Prob(T<=k)
pt(k,gradosT)		# Prob(T<k)


# PREGUNTA 2: k?
prob = 0.99
qt(prob,gradosS)		# P(S<k)
qt(1-prob,gradosS)	# P(S>k)

# PREGUNTA 3
k = 8.61
2*(1-pt(k,gradosR))	# Prob(|R|>k) = 2*(1-Prob(R<=k))
pt(k,gradosR)		# Prob(|R|<k)

# PREGUNTA 4
prob = 0.8419
# p-valor = prob/2
# grados de livertad = gradosQ
qt(prob/2,gradosQ)	# Prob(|Q|<?)
qt(1-prob/2,gradosQ)	# Prob(|Q|>?)

k = 1.06118
2*(1-pt(k,gradosQ))	# Prob(|R|>k) = 2*(1-Prob(R<=k))
pt(k,gradosQ)		# Prob(|R|<k)

# PREGUNTA 5
k = 12.401
pchisq(k,gradosX)		# Prob(X<k)
1-pchisq(k,gradosX)	# Prob(X>k)

# PREGUNTA 6
prob = 0.99
qchisq(prob,gradosY)	# P(Y<k)
qchisq(1-prob,gradosY)	# P(Y>k)

# PREGUNTA 7
k1 = 68.73
k2 = 99.09
pchisq(k2,gradosU)-pchisq(k1,gradosU)