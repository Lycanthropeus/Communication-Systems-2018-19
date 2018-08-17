t1=-2:0.01:2;
t2=-2:0.01:2;
%syms x;
A = 1;
T = 1;
g1 = rect(t1,A,T,T/2);
g2 = rect(t2,A,T,-T/2);
plot(t1,g1,t2,g2);axis([-5 5 -0.5 2.5]);
g3 = conv(g1,g2);
