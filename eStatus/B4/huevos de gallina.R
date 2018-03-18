### HUEVOS DE GALLINA FELIZ ###

# El experto en huevos ecológicos de una granja conoce la distribución del peso
# (en gramos) de un huevo de gallina criada con grano, y es N($mu$, $sg$).
# Por supuesto, cuando los huevos se colocan en embalajes, se mezclan los más
# grandes con otros más pequeños, y esto puede crear suspicacias en el
# consumidor. En realidad, deberíamos tener claro que el peso medio de un
# conjunto de huevos permanece más estable que las variaciones naturales que
# se observan sobre un solo huevo.	

mu=60
sg=3


### PREGUNTA 1 ###
# Para empezar, introduce un intervalo (a,b) para el peso de un solo huevo.
# Este intervalo debe cumplir que el peso de un huevo elegido al azar estará
# entre sus límites con una probabilidad entre $A$% y $B$%.
A=85
B=90
risc = 1 - ((A + B) / 200)
offset1 = qnorm(1-(risc/2)) * sg
mu-offset1
mu+offset1



### PREGUNTA 2 ###
# ¿Qué pasaría si tomamos grupos de $n1$ huevos? Si se hace la media del peso
# de $n1$ huevos independientes y tomados al azar, ¿cómo se distribuye?
# Vuelve a proporcionar un intervalo que contenga con probabilidad entre
# $A$% y $B$% el peso medio de un grupo de tamaño $n1$.
n1=2
A=85
B=90
offset2 = qnorm(1-(risc/2)) * (sg/sqrt(n1))
mu-offset2
mu+offset2



### PREGUNTA 3 ###
# Repite, pero para el peso medio de un grupo de tamaño $n2$.
n2=16
offset3 = qnorm(1-(risc/2)) * (sg/sqrt(n2))
mu-offset3
mu+offset3



### PREGUNTA 4 ###
# Supóngase que el intervalo ($ic$) representa el peso medio de 'n' huevos,
# con una probabilidad de $C$%. ¿Puedes hallar el valor de 'n'?
a=59.2107
b=60.7893
ic = c(a, b)
C=87.5 
risc2 = 1 - C/100
n = (qnorm(1 - (risc2/2)) * 2 * sg / (ic[2] - ic[1])) ^ 2
paste(round(n))






.