#1. Quina és l'estimació puntual del temps mitjà que els estudiants dediquen
#a l'assignatura en qüestió?
v <- c(127,87,119,95,114,120,129,111,98,112,124,120,95,107);
mean(v)

#2. Amb la mostra disponible, doneu una estimació de l'error de la mitjana 
#(error tipus, o standard error, la magnitud de la variació d'origen aleatori 
#que és propi de la mitjana mostral).
sd(v)/sqrt(length(v))

#3. Es demana que trobeu una estimació per interval de confiança al 95% de la 
#mitjana poblacional de la variable "Temps dedicat a l'assignatura". 
#Assumiu que la desviació poblacional val $SG$.
A = 14   #desviació poblacional
x = (1.96*A)/sqrt(length(v))
mean(v) - x ; mean(v) + x

#4. Calculeu una altra estimació per al mateix paràmetre, però sense assumir 
#coneguda la desviació poblacional. Feu l'interval amb confiança $Cnf$%.
x = 80/100    # interval de confiança
t.test(v,conf.level=x) 

#5. Volem trobar un interval de confiança al $Cnf2$% per a la mitjana, 
#Suposem també que l'autèntica desviació és s=$SG$, i es desitja que 
#l'amplada de l'interval sigui de 10 hores, com a molt. 
#Quantes observacions necessitem recollir?
A =  98       #interval de confiança(sense percentatge)
B =  14       #desviació
x = ((A/2)+50)/100
ceiling(((qnorm(x)*B)/5)^2)