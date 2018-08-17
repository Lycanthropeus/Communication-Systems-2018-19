function rectangle = rect(t,A,T,delay)
rectangle = A*(heaviside(t+(T/2)-delay) - heaviside(t-(T/2)-delay));
%plot(t,rectangle);axis([-10 10 -0.5 3.5]);