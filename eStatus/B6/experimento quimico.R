dades <- read.table("clipboard",header=TRUE)
X = dades$vol
Y = dades$perc
n = length(dades$temp); n
sX2 = (sum(X^2)-(sum(X)^2)/n)/(n-1); sX2
sY2 = (sum(Y^2)-(sum(Y)^2)/n)/(n-1); sY2
sXY = (sum(X*Y)-(sum(X)*sum(Y)/n))/(n-1); sXY

# PREGUNTA 1
b1 = sXY/sX2; b1

# PREGUNTA 2
s2 = (n-1)*(sY2-b1*sXY)/(n-2); s2
sb1 = sqrt(s2/((n-1)*sX2)); sb1

# PREGUNTA 3
alfa = 0.05
t = qt(1-alfa/2,n-2); t
ifelse(b1/sb1 > t,"rebutgem H0","no rebutgem H0")

# PREGUNTA 4
x = 4 #cambiar segun unidades
b0 = mean(dades$perc)-b1*mean(dades$vol); b0
y = mean(dades$perc)-mean(b0+b1*(dades$vol-x)); y

# PREGUNTA 5
Xi = dades$temp
Yi = dades$perc
sX2i = (sum(Xi^2)-(sum(Xi)^2)/n)/(n-1); sX2i
sY2i = (sum(Yi^2)-(sum(Yi)^2)/n)/(n-1); sY2i
sXYi = (sum(Xi*Yi)-(sum(Xi)*sum(Yi)/n))/(n-1); sXYi
b1i = sXYi/sX2i; b1i

# PREGUNTA 6
s2i = (n-1)*(sY2i-b1i*sXYi)/(n-2); s2i
sb1i = sqrt(s2i/((n-1)*sX2i)); sb1i
Ti = b1i/sb1i; Ti

# PREGUNTA 7
Pi = 2*(1-pt(Ti,n-2)); Pi

# PREGUNTA 8
sXi = sqrt(sX2i)
sYi = sqrt(sY2i)
rXYi = sXYi/(sXi*sYi); rXYi

# PREGUNTA 9
xi = 8 # cambiar segun horas
b0i = mean(Yi)-b1i*mean(Xi); b0i
yi = b0i+b1i*xi; yi

# PREGUNTA 10
prob = 0.99 # cambiar según intervalo de confianza
alfa = 1-prob; alfa
t = qt(1-alfa/2,n-2); t

si = sqrt(s2i)
ei = yi - t*si*sqrt((1/n+(xi-mean(Xi))^2/sum(Xi-mean(Xi)^2))); ei
es = yi + t*si*sqrt((1/n+(xi-mean(Xi))^2/sum(Xi-mean(Xi)^2))); es

IC = c(ei,es); IC
