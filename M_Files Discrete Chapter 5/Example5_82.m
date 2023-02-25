Ts=0.1; fs=1/Ts;T=1; N=T/Ts;
n=0:N-1;
xn=sin (2*pi*n*Ts);
Xk=fft (xn);
ck=Xk/N;
average=Xk (1)/N
avpower= (1/(N*N)) *sum (abs (Xk).^2)
k=0:N-1;
waxis=k*2*pi*fs/N;
stem(waxis,abs (ck));xlabel('Frequency in radians/sec');
title ('An approximation to the fourier series coefficients for sin (2*pi*t)');
ylabel ('Magnitude of the coefficients');
