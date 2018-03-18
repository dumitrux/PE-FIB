E = 2.5			# X' = nombre d'hores per reparar una averia
E = E*60			# X = X' en minuts
o = 38			# X~N(E,o)
				# Z~N(1,0) => Z=(X-E)/o	

# PREGUNTA 1
k = 112
Z=(k-E)/o
Z
pnorm(-Z)			# P(Z<=k) si Z < 0
pnorm(Z)			# P(Z<=k) si Z >= 0 ,,, Z=-1
1-pnorm(-Z)			# P(Z>=k) si Z < 0
1-pnorm(Z)			# P(Z>=k) si Z >= 0

# PREGUNTA 2
prob = 0.97
Z = 1.76			# taula
k = Z*o+E
k				# aproximacion para comprovarlo. NO VALIDO
qnorm(prob)*o+E ###Solución!!

# PREGUNTA 3
n = 19			# n averias
E_new = E*n/60
o_new = o*sqrt(n)/60
E_new; o_new


# PREGUNTA 4
n = 5				# n averias
k = 162
E_new = E
o_new = sqrt((o^2)/n)
Z=(k-E_new)/o_new; Z
pnorm(-Z)			# P(Z<=k) si Z < 0
pnorm(Z)			# P(Z<=k) si Z >= 0
1-pnorm(-Z)			# P(Z>=k) si Z < 0
1-pnorm(Z)			# P(Z>=k) si Z >= 0

# PREGUNTA 5
valor_inicial_eje = 20
valor_ejes = 20
pixl_ejes = 49
medida_pixel = pixl_ejes/valor_ejes
E_pixl = 137
E = valor_inicial_eje + E_pixl/medida_pixel
o_dist_e_pixl = 47
o = o_dist_e_pixl/medida_pixel
E; o