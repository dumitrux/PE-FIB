mu = 40
dades <- c(40.8,39.4,44.3,38.8,40.9,40.2,40.6,35.5,35.8,36.5,36.9)
n = length(dades); n

# PREGUNTA 1
p1 = mu; p1

# PREGUNTA 2
# manufacturer's point of view --> >
# user's point of view --> <

# PREGUNTA 3
mean(dades)

# PREGUNTA 4
Z = (mean(dades)-mu)/(sd(dades)/sqrt(length(dades))); Z

# PREGUNTA 5
1-pt(Z,n-1)		# manufacturer's point of view
pt(Z,n-1)		# user's point of view

# PREGUNTA 6
prob = 0.99
t.test(dades,conf.level=prob)

# PREGUNTA 7
sd(dades)

# PREGUNTA 8
prob = 0.99
alfa = 1-prob
s2 = (sum(dades^2)-sum(dades)^2/n)/(n-1); s2
c(s2*(n-1)/(qchisq(1-alfa/2,n-1)),s2*(n-1)/(qchisq(alfa/2,n-1)))