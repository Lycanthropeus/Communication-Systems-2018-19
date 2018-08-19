function y = rect(t,A,T);
y = A*(sign(t+(T/2)) - sign(t-(T/2)) > 0);
end
