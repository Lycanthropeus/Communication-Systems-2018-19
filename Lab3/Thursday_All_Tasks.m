t = linspace(0,0.01,1000000);
Am = 5;
Ac = 10;
fc = 18000;
fm = 900;
c1 = Ac*cos(2*pi*fc*t);
m1 = Am*sin(2*pi*fm*t);
u = Am/Ac;
g = m1/Am;
m2 = c1.*(1 + (u.*g));

%% TASK - I (Amplitude Modulation using the expression)

subplot(1,4,1);plot(t,m1);
subplot(1,4,2);plot(t,m2);

fs = 40000;

%% TASK - II (Amplitude Modulation using 'ammod')

y = ammod(m1,fc,fs,0,Ac);
subplot(1,4,3);plot(t,y);

%% TASK - III (Amplitude Modulation using 'modulate')

fs = 400000;
fc = 100000;
m4 = cos(2*pi*1000*t);
z = modulate(m4,fc,fs,'am');
subplot(1,4,4);plot(t,z);
