k = 10:18
p = c(0.024,0.063,0.111,0.149,0.164,0.151,0.129,0.111,0.098)
E = sum(k*p)
E; #solución pregunta 1

V = sum(((k - E)^2)*p)
o = sqrt(V)
o; #solución pregunta 2

p3 = sum(p[3],p[4],p[5],p[6],p[7],p[8])
p3 #solución pregunta 3

const = 1.23
p4 = 1/const
p4; #solución pregunta 4

t1 = 93.5/60
t2 = 24
p5 = -exp(-const*t2)-(-exp(-const*t1))
p5 #solución pregunta 5
