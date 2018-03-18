### PAPILLA DE ZOMBIE ###
# El mundo ha caído bajo el contagio de un virus que ha transformado a toda la
# población en zombis. Tu último refugio es nada más que tu coche, con el que
# deberás atropellar a cada uno de los muertos vivientes. 

# Tú (digamos A) y tu amigo (B) os habéis pasado la noche pisando zombis, y ha
# llegado la hora de determinar quién ha jugado mejor, basándose en el número
# promedio de pisoteos por partida. El registro del juego para cada partida
# (cada vez juega solo uno) nos informa sobre el número de zombis aplastados
# hasta que la acumulación de carne pútrida detiene el coche y es
# reglamentariamente devorado el cerebro del conductor (game over).

A = c(85, 106, 70, 87, 100, 94, 63, 86, 118, 60, 80, 92, 87, 87, 74, 101, 87, 85, 91, 70)
B = c(66, 58, 111, 74, 83, 86, 99, 111, 118, 62, 67, 61, 80, 50, 95, 101, 59, 76)



### PREGUNTA 1 ###
# Vamos a comparar los resultados. La diferencia promedio entre los zombis que
# has atropellado tú y los que ha atropellado B por partida vale 5.2.
# Entonces:
#	1- A lleva ventaja
#	2- B lleva ventaja
#	2- Los dos vais muy iguales
mA = mean(A)
mB = mean(B)
mA
mB
# Si mean(A) > mean(B) --> 1#   (ma-mB > 0) en el nostre cas és 5.2, ens ho diuen 
# Si mean(A) < mean(B) --> 2#	  (ma-mB < 0)
# Si mean(A) ~ mean(B) --> 3#



### PREGUNTA 2 ###
# Es de suponer que los dos jugadores presentan unas condiciones similares en
# cuanto a variabilidad de resultados. Bajo este supuesto, obtén una
# estimación de la...

#CAS1: desviación tipo compartida por ambos jugadores.	
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
# De hecho, también la diferencia de resultados entre A y B cambia
# cada noche, a consecuencia de la dispersión natural de cada uno. Se pide que
# des una estimación del error tipo, o standard error (la desviación típica de
# la diferencia de promedios).

stdev = sqrt(((n1-1)*vA^2+(n2-1)*vB^2) / ((n1-1)+(n2-1)))
vari = stdev^2
p3 = sqrt(vari/n1 + vari/n2)
p3



### PREGUNTA 4 ###
# Formalmente, la información que sabemos con la muestra de esta 
# noche procede del estadístico utilizado para poner a prueba la siguiente 
# hipótesis, que consideramos bilateral porque a priori ninguno de los dos 
# tiene ventaja:
#	H: µA = µB
# ¿Cuánto vale el estadístico de la prueba, con estos datos?

# Opció 1: 
t = ((mA - mB)/(s*sqrt(1/n1+1/n2)))
t

# Opció 2:     0.9075
x=0.95;
t.test(A,B,var.equal=TRUE,conf.level=x)
# on A i B són els vectors i el x és l'interval de confiança de 95% (estàndard)
# El resultat serà el valor de la t



### PREGUNTA 5 ###
# Halla el valor P asociado a la prueba de hipótesis que has 
# realizado.

x=0.95;
t.test(A,B,var.equal=TRUE,conf.level=x)
# on A i B són els vectors i el x és l'interval de confiança de 95% (estàndard)
# El resultat serà el valor de la p-value.



### PREGUNTA 6 ###
# ¿Cuál sería la conclusión de la prueba?
# 	1- Es evidente que B lo hace mejor
# 	2- Los dos sois igual de buenos
# 	3- Que A y B tienen el mismo nivel es verosímil
# 	4- Es evidente que A lo hace mejor
# 	5- Tú siempre eres el número 1

#RESPOSTA: 
# si  mean(A) > mean(B) --> 4   	(amb una diferencia elevada)
# Si mean(A) < mean(B) --> 1		(amb una diferencia elevada)
# Si p-valor > 0.05 --> 3
# si cap de les anteriors --> 2




### PREGUNTA 7 ### 
# Finalmente, se quiere saber qué diferencia debe existir entre µA
# y µB. Estima dicha diferencia con un intervalo de confianza $cnf$% (con una 
# precisión de dos cifras decimales correctas en cada lado).

x=0.999;
t.test(A,B,var.equal=TRUE,conf.level=x)
# on A i B són els vectors i el x és l'interval de confiança
# El resultat serà l'interval de confiança (posar primer el petit seguit
# del gran).



.