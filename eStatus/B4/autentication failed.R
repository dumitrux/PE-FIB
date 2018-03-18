v <- c(128, 87, 114, 140, 44, 149, 100, 70, 123, 86)


### PREGUNTA 1 ###
# La línea gris indica la estimación puntual observada del tiempo promedio
# entre dos pulsaciones para este usuario. Halle el valor estimado.

m = mean(v)
m



### PREGUNTA 2 ###
# Seguidamente, con la muestra observada, estime el error típico de la media
# muestral

error = sd(v)/sqrt(length(v))
error



### PREGUNTA 3 ###
# Se pide a continuación una estimación por intervalo de confianza de 90%
# para el parámetro “tiempo esperado entre dos caracteres”, correspondiente a
# nuestro usuario. No asuma que conoce el valor de la desviación típo
# poblacional (es sd(v)).

x=99/100 #confianza de 90%
y=(1-x)/2
n=length(v)-1
x; y; n;
tp = 3.250
	# per trobar 'tp' agafem a la taula t-student el valor per v=n i prob=y
	# si y no surt a la taula, equival a prob=1-y
minim = mean(v)-(tp*(error)); minim
maxim = mean(v)+(tp*(error)); maxim



### PREGUNTA 4 ###
# El sistema supone, a partir de la información registrada previamente,
# que el tiempo medio del supuesto usuario es 102. Si pusiera a prueba que
# la entrada que se acaba de hacer proviene efectivamente de tal usuario,
# diga cuál es el valor P que hallaría.

m_new = 85
n = length(v)
Z = (mean(v)-m_new)/(sd(v)/sqrt(n)); Z
2*(1-pt(Z,n-1)) # o bé 2*(pt(Z,n-1)) si l'anterior és >1



### PREGUNTA 5 ###
# Obtenga un intervalo de confianza de 99% para la desviación tipo del tiempo,
# según la muestra disponible.

C2 = 80
riesgo2 = 1 - C2/100
numerad = sd(v)^2 * (length(v)-1)
sqrt(numerad/qchisq(1-riesgo2/2, length(v)-1)); sqrt(numerad/qchisq(riesgo2/2, length(v)-1))








.