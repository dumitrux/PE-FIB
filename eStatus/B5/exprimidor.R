dades <- read.table("clipboard",header=TRUE)
dades1 <- read.table("clipboard",header=TRUE)
dades2 <- read.table("clipboard",header=TRUE)
n1 = length(dades1$Peso)
n2 = length(dades2$Peso)

# PREGUNTA 1
s2Z = ((n1-1)*var(dades1$Z)+(n2-1)*var(dades2$Z))/(n1+n2-2); s2Z
sZ = sqrt(s2Z); sZ

# PREGUNTA 2
mu1Z = mean(dades1$Z); mu1Z
mu2Z = mean(dades2$Z); mu2Z
t = (mu1Z-mu2Z)/(sZ*sqrt(1/n1+1/n2)); t
P = 2*(1-pt(t,n1+n2-2)); P
P = 2*pt(t,n1+n2-2); P

# PREGUNTA 3
alfa = 0.10
sd1Z = sd(dades1$Z); sd1Z
sd2Z = sd(dades2$Z); sd2Z
var1Z = var(dades1$Z); var1Z
var2Z = var(dades2$Z); var2Z
F = var2Z/var1Z; F
pcritic = qf(1-alfa/2,n1-1,n2-1); pcritic

# PREGUNTA 4
# Y => mitja taronja per 1 y mitja taronja per 2 => APARELLADES
D = dades1$Y-dades2$Y; D
t = mean(D)/(sd(D)/sqrt(length(D))); t
P = 2*(1-pt(t,length(D)-1)); P
P = 2*pt(t,length(D)-1); P

# PREGUNTA 5
prob = 0.90
alfa = 1-prob; alfa
t = qt(1-alfa/2,n1+n2-2); t
c(mu1Z-mu2Z-t*sZ*sqrt(1/n1+1/n2),mu1Z-mu2Z+t*sZ*sqrt(1/n1+1/n2))

D = dades1$Z-dades2$Z; D
t = qt(1-alfa/2,length(D)-1); t
c(mean(D)-t*sd(D)*sqrt(1/length(D)),mean(D)+t*sd(D)*sqrt(1/length(D)))

# PREGUNTA 6
# si salen los resultados positivos => El exprimidor que gira
# en un sentido es mejor











