###MODELOS ESTADÍSTICOS###

# Tenemos las variables T, S, R y Q que siguen la distribución 
# t-Student con los siguientes grados de libertad:
# T: 5	S: 40		R: 22		Q: 64

# Además, las variables X, Y y U siguen la distribución 
# Chi-Cuadrado (?2) con los siguientes grados de libertad:
# X: 14	Y: 28		U: 95

# Responda a las preguntas de cálculo que vienen a continuación.


### PREGUNTA 1 ###	
#CAS1:
# Prob(T > 4.032)=???
#
# RESPOSTA: buscar a la taula de t-Student la probabilitat per 4.032 en la 
#		fila de v=5 (en el nostre cas resultat = 0.995)
# 	      Com ens demanen Prob(T > 4.032), és 1-resultat
#		(en el nostre cas 1-0.995 = 0,005)
#
#CAS2: 
# Prob(T > -4.032)=???
#
# RESPOSTA: buscar a la taula de t-Student la probabilitat per 4.032 en la 
#		fila de v=5 (en el nostre cas resultat = 0.995)
# 	      Com ens demanen Prob(T > -4.032), és el resultat directe
#		(en el nostre cas 0.995)
#
#CAS3:
# Prob(T < 4.032)=???
#
# RESPOSTA: buscar a la taula de t-Student la probabilitat per 4.032 en la 
#		fila de v=5 (en el nostre cas resultat = 0.995)
# 	      Com ens demanen Prob(T > 4.032), és el resultat directe
#		(en el nostre cas 0.995)
#
#CAS4: 
# Prob(T < -4.032)=???
#
# RESPOSTA: buscar a la taula de t-Student la probabilitat per 4.032 en la 
#		fila de v=5 (en el nostre cas resultat = 0.995)
# 	      Com ens demanen Prob(T > -4.032), és 1-resultat
#		(en el nostre cas 1-0.995 = 0,005)



### PREGUNTA 2 ###	
#CAS1:
# El argumento marcado con '?' tal que Prob(S > ?) = 0.05 
#
# RESPOSTA: 1-0.05 = 0.95 (per '>'), S = 40
#		llavors és la intersecció entre la probabilitat 0,95 i v = 40
# 		en el nostre cas és 1,684
#
#CAS2:
# El argumento marcado con '?' tal que Prob(S > ?) = 0.9975
#
# RESPOSTA: per '>': 1-0.9975 = 0.0025 (no està a la taula), S = 40
#		llavors és la intersecció entre la probabilitat 0,9975 i v = 40
# 		en el nostre cas és 2,971 però el resultat és en negatiu: -2,971
#
#CAS3:
# El argumento marcado con '?' tal que Prob(S < ?) = 0.05 
#
# RESPOSTA: 0.05 (per '<'), S = 40
#   		0.05 no està a la taula, llavors prenem 1-0.05=0.95
#		llavors és la intersecció entre la probabilitat 0,95 i v = 40
# 		en el nostre cas és 1,684 peró en negatiu: -1,684
#
#CAS4:
# El argumento marcado con '?' tal que Prob(S < ?) = 0.9975
#
# RESPOSTA: (per '<')0.9975, S = 40
#		llavors és la intersecció entre la probabilitat 0,9975 i v = 40
# 		en el nostre cas és 2,971



### PREGUNTA 3 ###
#CAS1:
# P(|R| > ? ) = 0.00499999999999989
#
# RESPOSTA:	R = 22, P(|R| > ? )=0.00499999999999989, 
#		tenim: alpha=0.00499999999999989 => alpha/2=0.0025 => 
#		=> 1-(alpha/2)=0.9975
#		llavors, és la intersecció entre la probabilitat 0.9975 i v =22
#		en el nostre cas és 3,119
#
#CAS2:
# P(|R| < ? ) = 0.9
#
# RESPOSTA:	R = 22, P(|R| < ? )=0.9, 
#		tenim: alpha=1-0.9 => alpha=0.1 => 1-(0.1/2)=0.95
#		llavors, és la intersecció entre la probabilitat 0.95 i v =22
#		en el nostre cas és 1,717
##CAS3:
# P(|R| < 3,119 ) = ?
#
# RESPOSTA:	R = 22, P(|R| <3,119 ), 
#		per a v=21, i el valor 3,119 en les taules, estem al 0.9975 -> 
#		-> 1-0.9975 = alpha/2 -> 0.0025 = alpha/2 -> alpha = 0.005
#		llavors, és la probabilitat de 1-alpha=1-0.005=0.995



### PREGUNTA 4 ###
# P(|Q| > ? ) = 0.5032
#
#
# RESPOSTA:	 0.67327



### PREGUNTA 5 ###
#CAS1:
# Prob(X > 26.119) 
#
# RESPOSTA:	 X = 14, Prob(X > 26.119)
#		en les taule ChiCuadrat, per a v=14 el valor 26,119 correspon
#		a la probabilitat 0,975
#		llavors: 1-0,975 = 0,025 (ja que ens demanen X > 26.119)
#
#CAS2:
# Prob(X < 26.119) 
#
# RESPOSTA:	 X = 14, Prob(X < 26.119)
#		en les taule ChiCuadrat, per a v=14 el valor 26,119 correspon
#		a la probabilitat 0,975
#		llavors: 0,975 (ja que ens demanen X < 26.119)



### PREGUNTA 6 ###
#CAS1:
# El argumento marcado con '?' tal que Prob(Y > ?) = 0.05
#
# RESPOSTA:	 Y = 28, Prob(Y > ?) = 0.05 => probabilitat = 1-0.05 (per  '>')
#		per tant: probabilitat = 0.95
#		llavors, la probabilitat de 0.95 amb v = 28, dona el valor 41.337
#
#CAS2:
# El argumento marcado con '?' tal que Prob(Y < ?) = 0.05
#
# RESPOSTA:	 Y = 28, Prob(Y < ?) = 0.05 => probabilitat = 0.05 (per  '<')
#		llavors, la probabilitat de 0.05 amb v = 28, dona el valor 16,928



### PREGUNTA 7 ###
# ¿Cuál es la probabilidad de que la variable U presente 
# un valor entre 80.15 y 88.26?
#
#
# RESPOSTA:



