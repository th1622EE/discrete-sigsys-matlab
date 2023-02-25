nh=0:10; nx=0:5;
hn=.5.^nh; xn=1.^nx; %original signals
yn= conv (xn, hn) %output using direct convolution
hn= [hn zeros(1, length (nx)-1)];%zero padding
xn= [xn zeros(1, length (nh)-1)];
Hk=fft (hn); Xk=fft (xn); Yk=Hk.*Xk;
Yn=ifft (Yk) %inverse fft to get y (n)
n=0:15;
subplot (2,1,1);stem (n, yn);title ('Output using direct convolution');
subplot (2,1,2);stem (n,Yn); xlabel ('n');
title ('Output using the inverse DFT');
