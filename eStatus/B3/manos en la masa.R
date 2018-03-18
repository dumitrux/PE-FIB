E = 5.7			# E en minutos
num_videos = 80		# grupos de 75 videos

## PREGUNTA 1 ################

  # EXPONENCIAL
landa = 1/E
V = 1/landa^2; V

  # UNIFORME
a = 2.4
b = E*2-a
V = ((b-a)^2)/12; V


## PREGUNTA 2 ################
k = 4.2

  # EXPONENCIAL
p2 = 1-pexp(k,landa); p2

  # UNIFORME
p2 = 1-punif(k,a,b); p2


## PREGUNTA 3 ################
k = 8.87

  # EXPONENCIAL
p3 = exp(-landa*k); p3	# Rx(k) = P(X>k) = exp(-landa*k)

  # UNIFORME
p3 = 1-punif(k,a,b); p3

## PREGUNTA 4 ###############
capacidadDVD = 4.3*1024		# 4.3GB*1024MB/GB
num_min = 9			# numero de MB que ocupa un minuto

E_new = E*num_videos*num_min
o_new = sqrt(V*num_videos)*num_min
1-pnorm(capacidadDVD,E_new,o_new)

## PREGUNTA 5 ###############
prob = 0.99
qnorm(prob,E_new,o_new) #SOLUCION NATURAL

## PREGUNTA 6 ################
prob = 0.95

num_videos = 71 ### IR VARIANDO para que el pnorm sea igual que prob
E_new = E*num_videos*num_min
o_new = sqrt(V*num_videos)*num_min
pnorm(capacidadDVD,E_new,o_new)