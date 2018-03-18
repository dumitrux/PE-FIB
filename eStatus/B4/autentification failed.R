dades <- c(134,130,119,138,143,113,134,118)
n = length(dades); n

# PREGUNTA 1
mean(dades)

# PREGUNTA 2
sd(dades)/sqrt(length(dades))

# PREGUNTA 3
prob = 0.98
t.test(dades,conf.level=prob)

# PREGUNTA 4
mu_new = 94
Z = (mean(dades)-mu_new)/(sd(dades)/sqrt(n)); Z
1-pt(Z,n-1)

# PREGUNTA 5
prob = 0.80
alfa = 1-prob
s2 = (sum(dades^2)-sum(dades)^2/n)/(n-1); s2
c(sqrt(s2*(n-1)/(qchisq(1-alfa/2,n-1))),sqrt(s2*(n-1)/(qchisq(alfa/2,n-1))))