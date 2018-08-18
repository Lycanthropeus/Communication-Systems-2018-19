sympref('HeavisideAtOrigin',1);
A = 1;
T = 1;
Fs = 1000;
t = -10:0.01:10;
u_step = (t >= 0);
g1 = rect(t,A,2*T,0).*u_step;
a = fftshift(fft(g1))/100;
[m, n] = cart2pol(real(a),imag(a));


N = length(g1);

xdft = fftshift(fft(g1));

psdx = 1/(5*N*T)*abs(xdft).^2;

plot(t,n,t,psdx);axis([-9 9 0 1.5]);title('ESD and Magnitude Spectra');xlabel('t');legend('Magnitude','ESD');
