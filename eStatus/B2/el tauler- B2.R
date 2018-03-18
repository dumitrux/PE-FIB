# Vector de probabilidades de la suma de dos dados regulares
# dices[i] = probabilidad de que dos dados regulares sumen i
dices <- c(0, 1/36, 2/36, 3/36, 4/36, 5/36, 6/36,
		5/36, 4/36, 3/36, 2/36, 1/36)


############################################################
# Pregunta 1
# En primer lloc, recordi’ns alguna cosa sobre la distribució de probabilitat
# de la suma de dos daus. Quina és la probabilitat que sigui $intervalo$? intervalo = 1:2 # Ejemplo
# sum(dices[intervalo])

#resposta pregunta 1:
sum(dices[4:12])


###########################################################
# Datos del problema
# Introduce el tablero, 1 -> en blanco, probabilidad nula
data <- c(	9, 2, 12, 1, 1,
		1, 1, 1, 1, 1,
		1, 1, 4, 5, 1,
		3, 1, 8, 7, 11,
		1, 1, 10, 1, 6	)

# Creamos el tablero a partir de los datos
board = matrix(data, ncol=5, nrow=5, byrow=T)

# 2. Respecte la funció de probabilitat conjunta de T i G, es vol saber quines
# són les probabilitats que apareixen per a latitud $lat$.
# Escrigui tots els nombres (inclosos els zeros) separats per espais.
# Pot donar la resposta amb dos decimals, arrodonint el segon al nombre
# més proper.
lat = 1
dices[board[3-lat,]]

#############################################################

# 3. La mateixa qüestió, però per a la longitud $lon$.
# Compte: poseu els números per a longituds creixents (-2, -1, 0, ...)
lon = 2
rev(dices[board[,lon+3]])

###########################################################
# 4. Trobi la funció de probabilitat de la variable latitud.
# Ara, almenys tres decimals correctes. Com abans, separi els nombres
# amb espais.
p4 <- c(1:5)
for(i in 1:5)
	p4[i] = sum(dices[board[i,]])

T <- rev(p4)
T

# 4. Trobi la funció de probabilitat de la variable longitud.
# Ara, almenys tres decimals correctes. Com abans, separi els nombres
# amb espais.
p4 <- c(5:1)
for(i in 1:5)
	p4[i] = sum(dices[board[,i]])

L <- p4
L


###########################################################
# 5. Suposem que a una jugada sabem que la fitxa es mou des de la casella
# central cap al Sud (inclosos moviments diagonals). Trobi la funció de
# probabilitat de la variable G tenint en compte aquesta informació.
# Tres decimals de precisió almenys.	

#cas sud#
pn = sum(dices[board[-1:-2,]])
p5 <- c(1:5)

for(j in 1:5)
	p5[j] = sum(dices[board[-2:-1,j]]) / pn

p5


0.2, 0.25, 0.55, 0, 0

#cas nord#
pn = sum(dices[board[1:2,]])
p5 <- c(1:5)
 
for(j in 1:5)
        p5[j] = sum(dices[board[1:2,j]]) / pn
 
p5

########################################################
# 6. Calculi el valor esperat del moviment d'una jugada,
# en el sentit de la latitud.	
G <- c(1:5)
for(j in 1:5)
	G[j] = sum(dices[board[j,]])

eG = sum(c(2:-2)*G)
eG

# 6. Calculi el valor esperat del moviment d'una jugada,
# en el sentit de la longitud.	
G <- c(1:5)
for(j in 1:5)
	G[j] = sum(dices[board[,j]])

eG = sum(c(-2:2)*G)
eG
#########################################################

# 7. Seguidament, indiqui el valor de la desviació tipus,
# per al sentit de la latitud.
eT = sum(c(-2:2)*T)
vT = sum((c(-2:2)-eT)^2*T)
sqrt(vT)

# 7. Seguidament, indiqui el valor de la desviació tipus,
# per al sentit de la longitud.
eL = sum(c(-2:2)*L)
vL = sum((c(-2:2)-eL)^2*L)
sqrt(vL)


#########################################################
# 8. Quin és el valor de la covariància entre el moviment de longitud i
# el moviment de latitud?
# Respongui amb tres decimals de precisió.	
p8 = 0
for(i in -2:2)
	for(j in -2:2)
		p8 = p8 + (i - eT) * (j - eG) * dices[board[3-i,j+3]]

p8