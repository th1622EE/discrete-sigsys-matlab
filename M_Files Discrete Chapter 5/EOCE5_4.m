%For x (n) we will sample for 0.001 seconds
Ts1=1/8000; n1= 0:8;t1=n1*Ts1; N1 = 8;
xn=sin (2*pi*1000*t1);
%For h(n) we will sample for .1 seconds
Ts2=1/200; n2=0:20; t2=n2*Ts2; N2=20;
hn=exp (-100*t2);
subplot (1,3,1); stem(n1,xn);title('x(n)');
xlabel ('n');
subplot (1,3,2); stem(n2,hn);title('h(n)');
xlabel ('n');
%next we make both signals of size n1+n2 ?1
N=length(xn)+length(hn)-1;
xn= [xn zeros(1, N-length (xn))];
hn= [hn zeros(1, N-length (hn))];
Xk=fft (xn); Hk=fft (hn);
Yk=Xk.*Hk;
yn=ifft (Yk);
%Plotting
n=0:1:N-1;
subplot (1,3,3); stem (n,yn);title ('y(n)');
xlabel ('n');
