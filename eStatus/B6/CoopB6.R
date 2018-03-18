X = c(2,3,1,4,5,3,6,1)
Y = c(3.2,4.1,2.3,4.7,4.9,3.9,5.3,2.0)
n = length(X)
summary(lm(y~x))

sXY = (sum(X*Y)-sum(X)*sum(Y)/n)/(n-1); sXY
sX2 = (sum(X^2)-sum(X)^2/n)/(n-1); sX2
sY2 = (sum(Y^2)-sum(Y)^2/n)/(n-1); sY2
sX = sqrt(sX2); sX
sY = sqrt(sY2); sY
b1 = sXY/sX2; b1
b0 = mean(Y)-b1*mean(X); b0

s2 = sum((Y-b0-b1*X)^2)/(n-2); s2
sb1 = sqrt(s2/((n-1)*sX2))
sb0 = sqrt(s2*(1/n+mean(X)^2/((n-1)*sX2)))

---------------------------------------------------------

# PREGUNTA 1
res = c()
x = c(1:6)
for(i in 1:6) {
    res[i]=b0+b1*x[i]
}

# Gràfic de les dades, i recta de regressió lineal
plot(X,Y)
lines(res)

---------------------------------------------------------

# PREGUNTA 2
# Recta de regressió lineal: Y = b0 + b1*X

---------------------------------------------------------

# PREGUNTA 3
# Residual Standard Error = sqrt(s2)
s = sqrt(s2); s

# Coeficient de determinació = R2
rXY = sXY/(sX*sY); rXY
R2 = rXY^2; R2

---------------------------------------------------------

# PREGUNTA 4

# Linealitat
# Normalitat
# Homoscedasticitat
# Independència

par(mfrow=c(2,2))
plot(lm(Y ~ X),c(2,1))
hist(rstandard(lm(Y ~ X)))
plot (1:8,rstandard(lm(Y ~ X)),type="l")

---------------------------------------------------------

# PREGUNTA A
B1 = 0
t = qt(0.975,n-2); t
ifelse((b1-B1)/sb1>t,"rebutgem H0","no rebutgem H0")

---------------------------------------------------------

# PREGUNTA B
B0 = 0
t = qt(0.975,n-2); t
ifelse((b0-B0)/sb0>t,"rebutgem H0","no rebutgem H0")

---------------------------------------------------------

# PREGUNTA C
B1 = 0.6
t = qt(0.975,n-2); t
ifelse((b1-B1)/sb1>t,"rebutgem H0","no rebutgem H0")

---------------------------------------------------------

# PREGUNTA D
x = 3
y = b0+b1*x; y

ei = y - t*s*sqrt((1/n+(x-mean(X))^2/sum((X-mean(X))^2)))
es = y + t*s*sqrt((1/n+(x-mean(X))^2/sum((X-mean(X))^2)))

IC = c(ei,es); IC