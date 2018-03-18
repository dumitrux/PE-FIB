data <- c(89,123,121,105,125,122,96,107,111,107,122,134,119,139,105,111,126,114,120,81,108,119,107,116,122,107,84,108,115,129,119,117,120,121,144)
n = length(data); n
mu = mean(data)

# PREGUNTA 1
p1 = sum(data)/n; p1

# PREGUNTA 2
p2 = sd(data)/sqrt(n); p2

# PREGUNTA 3
prob = 0.95
sigma = 18
z = qnorm(prob+(1-prob)/2); z

p3_1 = mu - z*sigma/sqrt(n)
p3_2 = mu + z*sigma/sqrt(n)
p3_1; p3_2

# PREGUNTA 4 --- Solución: 85.523 109.477
prob = 0.95
z = 2.131; z

p4_1 = mu - z*sd(data)/sqrt(n)
p4_2 = mu + z*sd(data)/sqrt(n)
p4_1; p4_2

x = 90/100
t.test(data,conf.level=x)

# PREGUNTA 5
prob = 0.99
sigma = 18
amplada = 10
mu = mean(data)
IC_2 = mu + amplada/2
z = qnorm(prob+(1-prob)/2); z
p5 = (z*sigma/(IC_2-mu))^2; p5 #arrodoniment per excés

## x = ((99/2)+50)/100
## ceiling(((qnorm(x)*18)/5)^2)




