nx=0:5; nh=0:4;
xn=ones (1,6); hn=.2.^nh;
Xk=fft (xn,16); Hk=fft (hn,16);
Yk=Xk.*Hk;
yn=ifft (Yk);
% for plotting
n=0:15;
subplot (1,3,1);stem (nx,xn);title ('The input signal');
xlabel ('n');
subplot (1,3,2);stem (nh,hn);title ('The impulse response signal');
xlabel ('n');
subplot (1,3,3);stem (n,yn);title ('The output signal');
xlabel ('n');axis ([0 15 0 1.4]);
