### PAPILLA DE ZOMBIE ###
# El mundo ha ca�do bajo el contagio de un virus que ha transformado a toda la
# poblaci�n en zombis. Tu �ltimo refugio es nada m�s que tu coche, con el que
# deber�s atropellar a cada uno de los muertos vivientes. 

# T� (digamos A) y tu amigo (B) os hab�is pasado la noche pisando zombis, y ha
# llegado la hora de determinar qui�n ha jugado mejor, bas�ndose en el n�mero
# promedio de pisoteos por partida. El registro del juego para cada partida
# (cada vez juega solo uno) nos informa sobre el n�mero de zombis aplastados
# hasta que la acumulaci�n de carne p�trida detiene el coche y es
# reglamentariamente devorado el cerebro del conductor (game over).

A = c(85, 106, 70, 87, 100, 94, 63, 86, 118, 60, 80, 92, 87, 87, 74, 101, 87, 85, 91, 70)
B = c(66, 58, 111, 74, 83, 86, 99, 111, 118, 62, 67, 61, 80, 50, 95, 101, 59, 76)



### PREGUNTA 1 ###
# Vamos a comparar los resultados. La diferencia promedio entre los zombis que
# has atropellado t� y los que ha atropellado B por partida vale 5.2.
# Entonces:
#	1- A lleva ventaja
#	2- B lleva ventaja
#	2- Los dos vais muy iguales
mA = mean(A)
mB = mean(B)
mA
mB
# Si mean(A) > mean(B) --> 1#   (ma-mB > 0) en el nostre cas �s 5.2, ens ho diuen 
# Si mean(A) < mean(B) --> 2#	  (ma-mB < 0)
# Si mean(A) ~ mean(B) --> 3#



### PREGUNTA 2 ###
# Es de suponer que los dos jugadores presentan unas condiciones similares en
# cuanto a variabilidad de resultados. Bajo este supuesto, obt�n una
# estimaci�n de la...

#CAS1: desviaci�n tipo compartida por ambos jugadores.	
vA = sd(A)
vB = sd(B)
n1 = length(A)
n2 = length(B)
s = sqrt((sum((A-mA)^2)+sum((B-mB)^2))/(n1+n2-2))
s


#CAS2: variancia compartida por ambos jugadores.	
vA = sd(A)
vB = sd(B)
n1 = length(A)
n2 = length(B)
s = (sum((A-mA)^2)+sum((B-mB)^2))/(n1+n2-2)
s



### PREGUNTA 3 ###
# De hecho, tambi�n la diferencia de resultados entre A y B cambia
# cada noche, a consecuencia de la dispersi�n natural de cada uno. Se pide que
# des una estimaci�n del error tipo, o standard error (la desviaci�n t�pica de
# la diferencia de promedios).

stdev = sqrt(((n1-1)*vA^2+(n2-1)*vB^2) / ((n1-1)+(n2-1)))
vari = stdev^2
p3 = sqrt(vari/n1 + vari/n2)
p3



### PREGUNTA 4 ###
# Formalmente, la informaci�n que sabemos con la muestra de esta 
# noche procede del estad�stico utilizado para poner a prueba la siguiente 
# hip�tesis, que consideramos bilateral porque a priori ninguno de los dos 
# tiene ventaja:
#	H: �A = �B
# �Cu�nto vale el estad�stico de la prueba, con estos datos?

# Opci� 1: 
t = ((mA - mB)/(s*sqrt(1/n1+1/n2)))
t

# Opci� 2:     0.9075
x=0.95;
t.test(A,B,var.equal=TRUE,conf.level=x)
# on A i B s�n els vectors i el x �s l'interval de confian�a de 95% (est�ndard)
# El resultat ser� el valor de la t



### PREGUNTA 5 ###
# Halla el valor P asociado a la prueba de hip�tesis que has 
# realizado.

x=0.95;
t.test(A,B,var.equal=TRUE,conf.level=x)
# on A i B s�n els vectors i el x �s l'interval de confian�a de 95% (est�ndard)
# El resultat ser� el valor de la p-value.



### PREGUNTA 6 ###
# �Cu�l ser�a la conclusi�n de la prueba?
# 	1- Es evidente que B lo hace mejor
# 	2- Los dos sois igual de buenos
# 	3- Que A y B tienen el mismo nivel es veros�mil
# 	4- Es evidente que A lo hace mejor
# 	5- T� siempre eres el n�mero 1

#RESPOSTA: 
# si  mean(A) > mean(B) --> 4   	(amb una diferencia elevada)
# Si mean(A) < mean(B) --> 1		(amb una diferencia elevada)
# Si p-valor > 0.05 --> 3
# si cap de les anteriors --> 2




### PREGUNTA 7 ### 
# Finalmente, se quiere saber qu� diferencia debe existir entre �A
# y �B. Estima dicha diferencia con un intervalo de confianza $cnf$% (con una 
# precisi�n de dos cifras decimales correctas en cada lado).

x=0.999;
t.test(A,B,var.equal=TRUE,conf.level=x)
# on A i B s�n els vectors i el x �s l'interval de confian�a
# El resultat ser� l'interval de confian�a (posar primer el petit seguit
# del gran).



.