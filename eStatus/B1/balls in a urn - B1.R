#Balls in a urn
 
u1 = 4; #nombre de boles totals a la urna tails
v1 = 1;
b1 = 3;
u2 = 13; # heads
v2 = 2;
b2 = 11;
 
 
p1 = ((v1/u1)*(v2/u2))+((b1/u1)*(b2/u2));
p2 = ((b1/u1)+(b2/u2))/2;
p3 = v2/u2;
p4 = (v2/u2)/(v2/u2+v1/u1);
p5 = u1/b1;  #depen de quin sigui el de l'esquerra
#p5 = u2/b2; # en cas que l'esquerra sigui heads.
 
p1;
p2;
p3;
p4;
p5;