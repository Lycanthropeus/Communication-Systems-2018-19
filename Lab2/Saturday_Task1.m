A = 1;
T = 0.5;
t1 = -2:0.01:2;
t2 = -2:0.01:2;
g1 = rect(t1,A,T,T/2);
g2 = rect(t2,A,T,-T/2);
g3 = conv(g1,g2)/100;
t3 = t1(1)+ t2(1):0.01:t1(end)+t2(end);
plot(t3,g3,t1,g1);axis([-1.5 1.5 0 1.5]);xlabel('t');ylabel('g3(t)');title('Convolution');legend('g3(t)','g1(t )');
