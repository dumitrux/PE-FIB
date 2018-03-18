adsl<-read.table(url("http://www-eio.upc.es/teaching/pe/Dades/dades_ADSL.txt"),header=T,   
na.strings=c("00",NA),dec=',')

length(adsl$down.speed)
summary(adsl$down.speed)
sd(adsl$down.speed)
par(mfrow=c(1,2))  # defineix finestra gràfica per 2 gràfics (1 fila i 2 col)
hist(adsl$down.speed, main="Histograma: Down Speed",
font.main=4, xlab="Down Speed en K", ylab="Number",
font.lab=2, col=22)
boxplot(adsl$down.speed)

length(adsl$up.speed)
summary(adsl$up.speed)
sd(adsl$up.speed)

length(adsl$veloc.cont.down)
summary(adsl$veloc.cont.down)
sd(adsl$veloc.cont.down)

length(adsl$veloc.cont.up)
summary(adsl$veloc.cont.up)
sd(adsl$veloc.cont.up)













adsl$isTelef = ifelse(adsl$proveedor != "Telefónica", 0, 1)
adsl.NoTelef = subset(adsl,isTelef==0)

length(adsl.NoTelef$down.speed)
summary(adsl.NoTelef$down.speed)
sd(adsl.NoTelef$down.speed)
par(mfrow=c(1,2))  # defineix finestra gràfica per 2 gràfics (1 fila i 2 col)
hist(adsl.NoTelef$down.speed, main="Histograma: Down Speed",
font.main=4, xlab="Down Speed en K", ylab="Telefonica",
font.lab=2, col=22)
boxplot(adsl.NoTelef$down.speed)
