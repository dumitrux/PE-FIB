# script Modelo Binomial
# e - s t a t u s
# Datos iniciales:


# X1 ~ B(a,b)     X2 ~ B(c,d)
a = 20;
b = 0.15;
c = 16;
d = 0.16;
 

############################
####### PREGUNTA 1 #########
############################
# P(X1 >= c1) -->  1-pbinom(c1-1,a,b)
# P(X1 > c1)  -->  1-pbinom(c1,a,b)
# P(X1 <= c1) -->  pbinom(c1,a,b)
# P(X1 < c1)  -->  pbinom(c1-1,a,b)

c1 = 6   # P(X1 >= c1)???
1-pbinom(c1-1,a,b)
 

############################
####### PREGUNTA 2 #########
############################
# P(c2 < X1 <= c3)  -->  pbinom(c3,a,b)-pbinom(c2,a,b)
# P(c2 <= X1 <= c3) -->  pbinom(c3,a,b)-pbinom(c2-1,a,b)
# P(c2 <= X1 < c3)  -->  pbinom(c3-1,a,b)-pbinom(c2-1,a,b)
# P(c2 < X1 < c3)   -->  pbinom(c3-1,a,b)-pbinom(c2,a,b)

c2 = 5;   # P(c2 < X1 <= c3)???
c3 = 6;
pbinom(c3,a,b)-pbinom(c2,a,b)

############################
####### PREGUNTA 3 #########
############################

#¿Cuál es el menor valor entero k tal que P(X1 <= k) es superior a 0.1242?	
# Buscar k per la qual es cumpleixi pbinom(k,a,b) >= numero  
# i  pbinom(k-1,a,b) < numero

k = 1
pbinom(k,a,b) # esto da 0.1755579 > 0.1242
k = 0
pbinom(k,a,b) # esto da 0.03875953 < 0.1242

# como para k = 0 tenemos que es <0.1242 y para la siguiente 
# (k = 1) ya es >0.1242, tenemos que k=1. 


############################
####### PREGUNTA 4 #########
############################
# P(X2 <= c4) --> pbinom(c4,c,d)
# P(X2 = c4)  --> dbinom(c4,c,d)
c4 = 6 #P(X2 = c4)???
dbinom(c4,c,d)


############################
####### PREGUNTA 5 #########
############################
# P(X2 > c7)  = 1-P(X2 <= c7-1)  -->  1-pbinom(c7,c,d)
# P(X2 >= c7) = P(X2 > c7 - 1) = 1-P(X2 <= c7-2) -> 1-pbinom(c7-2,c,d)
# P(X2 < c7)  = P(X2 <= c7 - 1)  -->  pbinom(c7-1,c,d)
# P(X2 <= c7)  -->  pbinom(c7,c,d)
c7 = 6  #P(X2 > c7)????
1-pbinom(c7,c,d)


############################
####### PREGUNTA 6 #########
############################
# P(c5 < X2 <= c6)  -->  pbinom(c6,c,d)-pbinom(c5,c,d)
# P(c5 <= X2 <= c6) -->  pbinom(c6,c,d)-pbinom(c5-1,c,d)
# P(c5 <= X2 < c6)  -->  pbinom(c6-1,c,d)-pbinom(c5-1,c,d)
# P(c5 < X2 < c6)   -->  pbinom(c6-1,c,d)-pbinom(c5,c,d)
c5 = 6   # P(c5 < X2 <= c6)???
c6 = 6
pbinom(c6,c,d)-pbinom(c5,c,d)



 

