# Un fabricante nos ofrece un nuevo tipo de baterías para el aparato de medición
# que usamos habitualmente, el cual usa unas que duran en media 10 horas. En
# principio aquellas tienen una duración superior,  y queremos comprobar esta
# afirmación. La prueba de hipótesis que se plantea es:
H: µ = 10
 
# Con esta formulación, suponemos que la media µ de la población de las nuevas
# baterías es igual a la de las anteriores, es decir, adoptamos una postura
# conservadora (honesta) que sólo nos permitirá concluir que las nuevas baterias
# son "mejores" cuando los datos de la muestra nos haga la hipótesis H poco
# creíble. Es decir, cuando la evidencia (información) empírica, contenida en
# las observaciones de la muestra, nos indique que una población con una duración
# media superior a la de las baterías que se fabricaban antes es un origen más
# probable.
# La muestra recogida es la duración en horas (con precisión de un cuarto de
# hora) de 7 dispositivos que han funcionado hasta dar señales de que la batería
# se ha descargado.
 
###PREGUNTA 1 ###
# Supongamos conocida la varianza de la población, igual a 4. Calcular el
# estadistico z para la prueba de hipótesis del enunciado.
 
µ = 10
varianza = 4
sum = c(10,11.25,13.75,11.5,10.25,12.5,11.5,10.75,13.75)
P1 = (mean(sum)- µ)/(sqrt(varianza/length(sum)))
P1
 

 
###PREGUNTA 2 ###
# Según ese valor de z, elige la respuesta apropiada:
#	1- rechazo H // H es poco verosímil
#	2- no se ha hallado una diferencia estadísticamente significativa
# RESPOSTA:
# Si P1 negativo, marcariamos la 2
# Si P1 superior a '1', marcariamos la 1


 
### PREGUNTA 3 ###
# Supongamos que no tenemos datos sobre la desviación estándar de la población.
# Calcule la desviación estándar de la muestra.    
 
sd(sum)



### PREGUNTA 4 ### 
# Calcule el estadístico t según la desviación estándar de la muestra (dé al
# menos tres decimales correctos).    
 
µ = 10
P4 = (mean(sum)- µ)/(sd(sum)/sqrt(length(sum)))
P4



### PREGUNTA 5 ### 
# Halle el P valor asociado a la prueba, con cuatro decimales de precisión.  

# CAS P4 > 0: 
P5 = (1-pt(P4, length(sum)-1))
P5
# CAS P4 < 0
P4 = -P4
P5 = pt(P4,length(sum)-1)
P5

 
 
### PREGUNTA 6 ### 
# CAS 1:
# Valore una conclusión según ese valor de t: 
# 	1- la muestra es escasa, o los nuevos modelos se comportan como los 
#		anteriores
# 	2- con riesgo 5%, podemos afirmar que las nuevas baterías duran más en
#		media 
# RESPOSTA:
# Si P5 mas cerca de 1 que de 0, la respuesta es escasa (1)

# CAS 2: 
# 	1- el rendimiento ha mejorado
# 	2- la muestra es escasa, o los nuevos modelos se comportan como los anteriores 
# RESPOSTA:
# Si P5 cerca de 0, la respuesta es rendimiento mejorado (1)


 
### PREGUNTA 7 ###
# Si se quiere estimar la duración media con un intervalo de confianza al 8%,
# ¿qué obtenemos con esta muestra?
# Introducir primero el extremo inferior y luego el superior, con un espacio
# intermedio. Dos decimales correctos.
 
conf = 0.80
C = 1-conf
L = length(sum)
S = sd(sum)
P71 = mean(sum)-qt(1-(C/2),L-1)*(S/sqrt(L))
P72 = mean(sum)+qt(1-(C/2),L-1)*(S/sqrt(L))
P71; P72 
 


### PREGUNTA 8 ### 
# Suponiendo que se pretende obtener un IC al 80% de confianza para la verdadera
# media de la duración, con una amplitud del IC igual a 15 minutos, ¿cuántas
# observaciones se necesitan, asumiendo una desviación tipo poblacional igual a
# 60 minutos? Redondee por exceso el resultado.   
 
destp = 60 	# desviacio tipus de la P8
amplitud = 15 	# amplitud de IC
P8 = mostres <- ((2*1.282*destp)/amplitud)^2
P8



.