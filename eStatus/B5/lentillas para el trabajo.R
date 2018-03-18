#Copiar los datos como texto a un excel, ponerle "Ojo new" a la columna sin
#nombre y copiar todos los datos antes de empezar con este script.
 
datos <- read.delim("clipboard")
datos
 
n = length(datos$Humedad.drcho.)
Humedadnew <- c()
Humedadold <- c()


for (i in 1:n) {
if (datos$Ojo.new[i] == 'Drcho') {
Humedadnew <- c(Humedadnew, datos$Humedad.drcho.[i]);
Humedadold <- c(Humedadold, datos$Humedad.izqdo.[i]);
}
else {
Humedadnew <- c(Humedadnew, datos$Humedad.izqdo.[i]);
Humedadold <- c(Humedadold, datos$Humedad.drcho.[i]);
}
}
 
#1
r1 = mean(Humedadnew)
r1
 
#2
r2 = mean(Humedadnew-Humedadold)
r2
 
#3
r3 = sd(Humedadnew-Humedadold)
r3
 
#4
# r3/sqrt(n)
r4 = sd(Humedadnew-Humedadold)/sqrt(n)
r4
 
#5
# r1/r4
r5 = mean(Humedadnew-Humedadold)/(sd(Humedadnew-Humedadold)/sqrt(n))
r5
 
#6
r6 = n-1
r6
 
#7
# 2*(1-pt(r5, r6))
r7 = 2*(1-pt(mean(Humedadnew-Humedadold)/(sd(Humedadnew-Humedadold)/sqrt(n)) ,n-1))
r7
 
#8
a5 = "Aceptar con 5"
r5 = "Rechazar con 5"
a1 = "Aceptar con 1"
r1 = "Rechazar con 1"
if (r7 >= 0.05) a5
if (r7 < 0.05) r5
if (r7 >= 0.01) a1
if (r7 < 0.01) r1
 
#9 (A més aquest t.test ens deixa veure que els resultats r5,r6 i r7 son correctes)
confia = 0.98
t.test(Humedadnew, Humedadold, alternative = "t", mu = 0, conf.level = confia, paired = TRUE, var.equal = TRUE)