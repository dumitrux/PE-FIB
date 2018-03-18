# N(mu,sigma)
mu = 63.2
sigma = 3.8
n = 1

# PREGUNTA 1
prob1 = 0.75
prob2 = 0.80
prob = (prob1+prob2)/2; prob
alfa = 1-prob; alfa
c(mu-qnorm(1-alfa/2)*sigma/sqrt(n),mu+qnorm(1-alfa/2)*sigma/sqrt(n))

# PREGUNTA 2
n = 3
c(mu-qnorm(1-alfa/2)*sigma/sqrt(n),mu+qnorm(1-alfa/2)*sigma/sqrt(n))

# PREGUNTA 3
n = 15
c(mu-qnorm(1-alfa/2)*sigma/sqrt(n),mu+qnorm(1-alfa/2)*sigma/sqrt(n))

# PREGUNTA 4
k1 = 62.6459
k2 = 63.7541
prob = 0.525
alfa = 1 - prob; alfa
n1 = (qnorm(1-alfa/2)*sigma/(mu-k1))^2
n2 = (qnorm(1-alfa/2)*sigma/(k2-mu))^2
n1; n2

