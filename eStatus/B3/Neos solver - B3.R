## NEOS Solve
El servidor NEOS for Optimization es un servicio que permite a los usuarios 
mandar sus propios problemas de optimización para ser resueltos utilizando 
los más potentes solvers conocidos en el software de la optimización. 
Los problemas son resueltos automáticamente con la mínima interacción con 
el usuario, quien puede recibir la solución en su correo electrónico.

En este ejercicio vamos a suponer (aunque no es así) que los problemas que 
se envían son resueltos secuencialmente por un solo servidor, y nos vamos a 
centrar en las propiedades del proceso de llegada de problemas. La figura 
adjunta muestra la distribución del número de llegadas en el plazo de una 
hora.

############################
DATOS DE ENUNCIADO:
Se admite en nuestro caso que la variable de estudio se distribuye según una 
ley Poisson con promedio=6. 
############################

############################
####### PREGUNTA 1 #########
############################
x = 8       #num problemas que queremos ver
promedio = 8.5
lambda = promedio    # es el promedio
p=ppois(x-1, lambda)  
p		# que sea menor que
r = 1-ppois(x,lambda)
r		# que sea mayor que


############################
####### PREGUNTA 2 #########
############################
#exactamente! (primera columna de la diapo wapa)
x = 8   #numero de llegadas que nos dicen
p = dpois(x,lambda)
p

############################
####### PREGUNTA 3 #########
############################
x = 16    #num. de problemas
promedio = promedio*2   #en 1 hora son 2.8, pues en 2 son 12
lambda = promedio
p = dpois(x,lambda)
p

############################
####### PREGUNTA 4 #########
############################
#exponencial
lambda = 8.5 # el promedio que nos han dado inicialmente
promedio = (1/lambda) * 60 # es *60 pq me piden minutos
promedio

############################
####### PREGUNTA 5 #########
############################
x = 8.5   #promedio por hora
n=  6      #minutos que dan
lambda = n/60 #me lo dan en minutos y paso a horas
p = pexp(x,lambda)
p

############################
####### PREGUNTA 6 #########
############################
p = 0.13  #probabilidad de cada servidor
n = 15    #numero de servidores
k = 7    #servidores recibiendo
pr = 1-pbinom(k,n,p)  # tener mas de k servidores
pr