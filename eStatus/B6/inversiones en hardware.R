dades <- read.table("clipboard",header=TRUE)
n = length(dades$Preu); n
X = dades$Capacitat
Y = dades$Preu

# PREGUNTA 1
sXY = (sum(X*Y)-sum(X)*sum(Y)/n)/(n-1); sXY
sX2 = (sum(X^2)-sum(X)^2/n)/(n-1); sX2
sY2 = (sum(Y^2)-sum(Y)^2/n)/(n-1); sY2
sX = sqrt(sX2); sX
sY = sqrt(sY2); sY
b1 = sXY/sX2; b1

# PREGUNTA 2
V = (n-1)*(sY2-b1*sXY)/(n-2); V

# PREGUNTA 3
B1 = 4
b0 = mean(Y)-b1*mean(X); b0
s2 = sum((Y-b0-b1*X)^2)/(n-2); s2
sb1 = sqrt(s2/((n-1)*sX2))
t = (b1-B1)/sb1; t

# PREGUNTA 4
alfa = 0.05
Pcritic = qt(1-alfa/2,n-2); Pcritic

# PREGUNTA 5
rXY = sXY/(sX*sY); rXY
R2 = rXY^2; R2

# PREGUNTA 6
y = 785
x = 160
residuoE = y-x*b1-b0; residuoE

# PREGUNTA 7
prob = 0.95
alfa = 1-prob; alfa
x = 160
y = b0+b1*x; y
t = qt(1-alfa/2,n-2); t
s2 = (n-1)*(sY2-b1*sXY)/(n-2); s2
s = sqrt(s2); s

# IC per al preu mitja
c(y-t*s*sqrt(1/n+(x-mean(X))^2/sum((X-mean(X))^2)),y+t*s*sqrt(1/n+(x-mean(X))^2/sum((X-mean(X))^2)))

# IC per a valors individuals
c(y-t*s*sqrt(1+1/n+(x-mean(X))^2/sum((X-mean(X))^2)),y+t*s*sqrt(1+1/n+(x-mean(X))^2/sum((X-mean(X))^2)))

# PREGUNTA 8
IVA = 0.21
dades2 = dades
for (i in 1:n) {
if (dades2$Proveïdor[i] == '3') {dades2$Preu[i] = (1+IVA)*dades2$Preu[i]}
}

X = dades2$Capacitat
Y = dades2$Preu
sXY = (sum(X*Y)-sum(X)*sum(Y)/n)/(n-1); sXY
sX2 = (sum(X^2)-sum(X)^2/n)/(n-1); sX2
sY2 = (sum(Y^2)-sum(Y)^2/n)/(n-1); sY2
sX = sqrt(sX2); sX
sY = sqrt(sY2); sY
b1 = sXY/sX2; b1
b0 = mean(Y)-b1*mean(X); b0

