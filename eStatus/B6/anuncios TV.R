dades <- read.table("clipboard",header=TRUE)
n = length(dades$seg); n
X = dades$seg
Y = dades$score

# PREGUNTA 1
sXY = (sum(X*Y)-sum(X)*sum(Y)/n)/(n-1); sXY
sX2 = (sum(X^2)-sum(X)^2/n)/(n-1); sX2
sY2 = (sum(Y^2)-sum(Y)^2/n)/(n-1); sY2
sX = sqrt(sX2); sX
sY = sqrt(sY2); sY

# pendiente
b1 = sXY/sX2; b1

# término independiente
b0 = mean(Y)-b1*mean(X); b0

# PREGUNTA 2
s2 = (n-1)*(sY2-b1*sXY)/(n-2); s2
s = sqrt(s2); s
sb1 = sqrt(s2/((n-1)*sX2)); sb1
sb0 = sqrt(s2*(1/n+mean(X)^2/((n-1)*sX2))); sb0

# PREGUNTA 3
alfa = 0.05
t = qt(1-alfa/2,n-2); t
B1 = 0
ifelse((b1-B1)/sb1>t,"rebutjar H0","no rebutjar H0")

# PREGUNTA 4
y = 3
x = (y-b0)/b1; x

# PREGUNTA 5
x = 50
y = b0+b1*x; y

# PREGUNTA 6
prob = 0.95
alfa = 1-prob; alfa
t = qt(1-alfa/2,n-2); t

# IC per a la puntuació d'un individu
ei = y - t*s*sqrt((1+1/n+(x-mean(X))^2/sum((X-mean(X))^2)))
es = y + t*s*sqrt((1+1/n+(x-mean(X))^2/sum((X-mean(X))^2)))
IC = c(ei,es); IC

# PREGUNTA 7
# IC per a la puntuació mitjana
ei = y - t*s*sqrt((1/n+(x-mean(X))^2/sum((X-mean(X))^2)))
es = y + t*s*sqrt((1/n+(x-mean(X))^2/sum((X-mean(X))^2)))
IC = c(ei,es); IC

# PREGUNTA 8
rXY = sXY/(sX*sY); rXY
R2 = rXY^2; R2

# PREGUNTA 9
Residus = c()
for (i in 1:n) {
    Residus[i] = Y[i]-b0-b1*X[i]
}
plot(X,Residus)
