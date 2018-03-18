## MADE IN TAIWAN
La figura representa: a l'esquerra, temps de vida de certs components 
electrònics, que segueixen una distribució exponencial amb mitjana 13 
mesos; a la dreta, freqüència del rellotge d'un determinat tipus de 
processador, d'acord a una distribucio Normal amb esperança 2.13 GHz i 
desviacio tipus 0.077 GHz.	

############################
####### PREGUNTA 1 #########
############################

x = 26-8 #(meses que quieres que dure - meses pasados)
mitjana = 13
lambda = 1/mitjana 
p = 1-pexp(x,lambda)
p

############################
####### PREGUNTA 2 #########
############################

p = pexp(11,lambda)-pexp(10,lambda) #(diferencia de meses: mayor-menor)
p

############################
####### PREGUNTA 3 #########
############################

p = 0.33 #(percentil)
x = qexp(p,lambda)
x

############################
####### PREGUNTA 4 #########
############################
## superior a x
p = 0.62 # (% de componentes dela competencia)
x = 8    # ( numero de meses)
lambda = log(p)/-x
Mitjana = 1/lambda
Mitjana

############################
####### PREGUNTA 5 #########
############################
x = 2.176	# (frecuencia que miramos)
esperanca =  2.13 # (la da el enunciado)
desviacio = 0.077 # (la da el enunciado)
p = pnorm(x,esperanca,desviacio)  
p           # que sigui menor que x
r = 1-p	# que sigui major que x
r

############################
####### PREGUNTA 6 #########
############################
x = 2.13
p = pnorm(x,esperanca,desviacio)
p

############################
####### PREGUNTA 7 #########
############################
p = 0.889
x = qnorm(p,esperanca,desviacio)
x






