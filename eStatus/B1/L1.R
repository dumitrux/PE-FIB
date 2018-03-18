n = 15
Nota = c(8,9,4,7,10,9,6,7,8,7,4,5,9,10,7)
Fila = c(1,2,2,4,5,1,2,3,5,5,1,2,1,4,2)

hist(Nota)
boxplot(Nota)
summary(Nota)

Mitjana = mean(Nota)
Mitjana2 = Mitjana*Mitjana
Nota2 = Nota*Nota
Sumatori = sum(Nota2)
Sx = sqrt(1/(n-1)*(Sumatori-n*Mitjana2))
Sx
sd(Nota)
var(Nota)

IQR(Nota)

pos_Q1 = (n+1)/4
pos_Q3 = (n+1)*3/4
pos_Q1; pos_Q3
sort_Nota = sort(Nota)
sort_Nota
sort_Nota[1]
Q1 = sort_Nota[pos_Q1]
Q3 = sort_Nota[pos_Q3]
Q1;Q3
IQR = Q3 - Q1
IQR
IQR(Nota)
Q1 = (sort_Nota[pos_Q1]*3 + sort_Nota[pos_Q1])/4
Q3 = (sort_Nota[pos_Q3] + sort_Nota[pos_Q3]*3)/4
Q3 - Q1


table(Fila)
barplot(Fila)
pie(table(Fila))

breaks = c(0,5,8,9,10)
labels = c("susp","aprov","notab","excel")
Nota.ctg = cut(Nota, breaks, labels, right=FALSE,include.lowest=TRUE)
table(Nota.ctg)
barplot(table(Nota.ctg))
