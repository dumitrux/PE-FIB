landa = 14.5		# X~P(landa)
				# X = nombre de missatges spam al dia

# PREGUNTA 1
k = 12
p1 = 0.311-0.220		# taula P(X=k) = P(X<=k)-P(X<=k-1)
dpois(k,landa)		# P(X=k)

# PREGUNTA 2
p2 = 0.311			# taula P(X<=k)
ppois(k,landa)		# P(X<=k)

# PREGUNTA 3
k = 12
p3 = 1-0.220			# taula P(X>=k) = 1-P(X<=k-1)
1-ppois(k-1,landa)	# P(X>=k) = 1-P(X<=k-1)


# PREGUNTA 4
k1 = 10			# nombre de missatges inicials
k2 = 14			# nombre de missatges al que es vol arribar
t1 = 9; t2 = 18		# horari
				# 9 hores
landa_new = landa*3/8	# landa_new = promig de missatges en 9 hores
k = k2-k1			# nombre de missatges que han d'arribar
landa_new; k

1-ppois(k-1,landa_new)	# P(X>=k) = 1-P(X<=k-1)
p3 = 1-0.213		# taula. landa_new i P(X>=k) = 1-P(X<=k-1)
p3;


# PREGUNTA 5 -- TAULA!!!!
k = 3
k1 = landa-k		# P(|Y-landa|<k)
k2 = landa+k		# Y = nombre de missatges rebuts
k1; k2			# probabilitat de que rebi landa+-k missatges

ppois(k2-1,landa)-ppois(k1,landa)	# P(k1<Y<k2) = P(Y<k2)-P(Y<=k1) =
							= P(Y<=k2-1)-P(Y<=k1)
				# taula
0.790-0.220			# P(k1<Y<k2) = P(Y<k2)-P(Y<=k1) =
					= P(Y<=k2-1)-P(Y<=k1)


# PREGUNTA 6
				# N missatges
prob = 0.238		# P(X<=N) = prob
				# P(X>=N) = 1-P(X<=N) = 1-0.512

qpois(prob,landa)		# valor de N?
16				# N=15-->prob=0.467 i N=16-->prob=0.566
				# per N=16, ja supera la prob

###SOLUCIONS
p1;
p2;
p3;
p4;
p5;
p6