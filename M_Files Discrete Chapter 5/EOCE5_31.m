fs=16000;Ts=1/fs;
N=16;
n=0:15; % 16-points fft
t=n*Ts;
xn=sin (2*pi*2000*t)+0.5*sin(2*pi*4000*t);
Xk=fft (xn);
Xkappr=Ts*Xk;
k=n*fs/N; % the frequency axis
stem (k,abs(Xkappr));
xlabel ('Frequency in Hertz');
title ('Exact approximation using the DFT')
