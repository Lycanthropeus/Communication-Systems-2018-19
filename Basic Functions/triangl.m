function y = triangl(t,A,T)
y = A*(T-abs(t)).*(t>=-T).*(t<T);
end
