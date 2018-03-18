# A: Simplex
# B: Punto Interior

# 0: solución óptima hallada
# 1: solución subóptima
# 2: imposible hallar solución (infactible, no acotado o fallo numérico)

# copiar a excel los datos
# copiar los datos del excel al R
dades <- read.table("clipboard")
n = length(dades$V2); n

# PREGUNTA 1
nA0 = 0
nA1 = 0
nA2 = 0
nB0 = 0
nB1 = 0
nB2 = 0

for (i in 1:n) {
  if (dades$V2[i] == 'A') {
    if (dades$V3[i] == 0) {
      nA0 = nA0 + 1;
    }
    else if (dades$V3[i] == 1) {
      nA1 = nA1 + 1;
    }
    else if (dades$V3[i] == 2) {
      nA2 = nA2 + 1;
    }
  }
  else {
    if (dades$V3[i] == 0) {
      nB0 = nB0 + 1;
    }
    else if (dades$V3[i] == 1) {
      nB1 = nB1 + 1;
    }
    else if (dades$V3[i] == 2) {
      nB2 = nB2 + 1;
    }
  }
}

c(nA0,nB0,nA1,nB1,nA2,nB2)

table(dades)


# PREGUNTA 2
nA = nA0+nA1+nA2; nA
nB = nB0+nB1+nB2; nB
n0 = nA0+nB0; n0
n1 = nA1+nB1; n1
n2 = nA2+nB2; n2

eA0 = nA*n0/n; eA0	# Simplex y óptima
eA1 = nA*n1/n; eA1	# Simplex y subóptima
eA2 = nA*n2/n; eA2	# Simplex y imposible
eB0 = nB*n0/n; eB0	# Punto interior y óptima
eB1 = nB*n1/n; eB1	# Punto interior y subóptima
eB2 = nB*n2/n; eB2	# Punto interior y imposible

# PREGUNTA 3
xA0 = (nA0-eA0)^2/eA0
xA1 = (nA1-eA1)^2/eA1
xA2 = (nA2-eA2)^2/eA2
xB0 = (nB0-eB0)^2/eB0
xB1 = (nB1-eB1)^2/eB1
xB2 = (nB2-eB2)^2/eB2
X = xA0+xA1+xA2+xB0+xB1+xB2; X

# PREGUNTA 4
graus = (2-1)*(3-1); graus
P = 1-pchisq(X,graus)				# si P < 0.05
pcritic = qchisq(0.95,graus); pcritic	# si X > pcritic
P
c(1/5)		# si P > 0.2 => escasa
c(1/5,1/20)		# si P està dins => possible
c(1/20,1/200)	# si P està dins => moderada
c(1/200)		# si P < 0.005 => forta

# PREGUNTA 5
pA0 = nA0/nA; pA0	# Simplex y óptima
pA1 = nA1/nA; pA1	# Simplex y subóptima
pA2 = nA2/nA; pA2	# Simplex y imposible
pB0 = nB0/nB; pB0	# Punto interior y óptima
pB1 = nB1/nB; pB1	# Punto interior y subóptima
pB2 = nB2/nB; pB2	# Punto interior y imposible

# PREGUNTA 6
eA0/(eA0+eA1+eA2)
eB0/(eB0+eB1+eB2)
eA1/(eA0+eA1+eA2)
eB1/(eB0+eB1+eB2)
eA2/(eA0+eA1+eA2)
eB2/(eB0+eB1+eB2)

# PREGUNTA 7
P0 = (nA*pA0+nB*pB0)/(nA+nB)
P1 = (nA*pA1+nB*pB1)/(nA+nB)
P2 = (nA*pA2+nB*pB2)/(nA+nB)

se0 = sqrt(P0*(1-P0)/nA+P0*(1-P0)/nB); se0
se1 = sqrt(P1*(1-P1)/nA+P1*(1-P1)/nB); se1
se2 = sqrt(P2*(1-P2)/nA+P2*(1-P2)/nB); se2

# PREGUNTA 8
Z0 = (nA0/nA-nB0/nB)/se0
Z1 = (nA1/nA-nB1/nB)/se1
Z2 = (nA2/nA-nB2/nB)/se2

Z = Z2; Z
P = 2*(1-pnorm(Z))	# Z>=0
P = 2*pnorm(Z)		# Z<0

abs(Z); P