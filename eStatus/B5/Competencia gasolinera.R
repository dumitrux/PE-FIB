# G -> color negro
# H -> color rojo
G = c(1.466,1.472,1.474,1.566,1.503,1.456)
H = c(1.526,1.489,1.498,1.474,1.422,1.478)
nG = length(G); nG
nH = length(H); nH

# PREGUNTA 1: desviacion tipica de la marca G
sd(G)

# PREGUNTA 2: de la marca H
sd(H)

# PREGUNTA 3: estadístico de referencia en comparación de variancias
F = ifelse(var(H)>var(G),var(H)/var(G),var(G)/var(H)); F

# PREGUNTA 4: 
grados_num = ifelse(var(H)>var(G),nH-1,nG-1); grados_num
grados_den = ifelse(var(H)>var(G),nG-1,nH-1); grados_den

# PREGUNTA 5: valor para rechazar o no la hipotesis
alfa = 0.05
f = qf(1-alfa/2,grados_num,grados_den); f

# PREGUNTA 6
qf(0.025,grados_num,grados_den)

# PREGUNTA 7
P = 2*(1-pf(F,grados_num,grados_den)); P

# PREGUNTA 8
# si P < alfa => rebutjar H0

# PREGUNTA 9
g1 = 12
g2 = 4
prob = 0.656
qf(prob,g1,g2)