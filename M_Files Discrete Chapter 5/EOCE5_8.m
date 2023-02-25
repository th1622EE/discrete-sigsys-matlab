%Generating the signal x (n)
n=0:50; %51 samples
x1n=rand (1,length(n));
X1k=fft(x1n);
x2n=sin(2*pi*1000*n/10000);% fs=10000Hz
X2k=fft (x2n);
xn=x1n+x2n;% the signal x (n)
Xk=fft (xn);
Xkconj=conj (Xk);
k=0:50;
ESDk= (Xk.*Xkconj)/length (n);% energy spectral density estimate
Subplot (4,1,1);stem (k,X1k);ylabel ('X1(k)');
Subplot (4,1,2);stem (k,X2k);ylabel ('X2(k)');
Subplot (4,1,3);stem (k,Xk);ylabel ('X1k(k)+X2k(k)');
Subplot (4,1,4);stem (k,ESDk); xlabel ('k');ylabel ('Energy Density');
