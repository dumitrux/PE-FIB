n1 = 18; p1 = 0.65		# X1~B(n1,p1)
n2 = 10; p2 = 0.787		# X2~B(n2,p2)

#PREGUNTA 1
k = 12
dbinom(k,n1,p1)			# P(X1=k)
pbinom(k,n1,p1)			# P(X1<=k)
1-pbinom(k-1,n1,p1)		# P(X1>=k) = 1-P(X1<k) = 1-P(X1<=k-1)

#PREGUNTA 2
k1 = 8; k2 = 12
pbinom(k2,n1,p1) - pbinom(k1,n1,p1)	#P(k1<X1<=k2)

#PREGUNTA 3
prob = 0.2857
qbinom(prob,n1,p1)		# k pel qual P(X1<=k) > prob

#PREGUNTA 4
k = 4
dbinom(k,n2,p2)			# P(X2=k)
pbinom(k,n2,p2)			# P(X2<=k)
1-pbinom(k-1,n2,p2)		# P(X2>=k) = 1-P(X2<k) = 1-P(X2<=k-1)

#PREGUNTA 5
k = 3
1-pbinom(k,n2,p2)			#P(X2>k) = 1-P(X2<=k)

#PREGUNTA 6
k1 = 3; k2 = 7
pbinom(k2,n2,p2)-pbinom(k1,n2,p2)	#P(k1<X2<=k2)

#PREGUNTA 7
o = 1.24368
V = o^2
pixelsE = 69			# mida en pixels de E
E = pixelsE/32			# valor de E
q = V/E				# V=npq i E=np => V=Eq => q=V/E
p = 1-q
n = E/p				# E=np => n=E/p
n; p