fs=100; Ts =1/fs; T=5;% T is the time interval for sampling x (t)
N=T/Ts;
n=0:1:500; %n*Ts= 500*.01=5=the time interval T
xn=exp (-n*Ts);
Xk=fft (xn);
Etotal=Ts*sum (abs (xn).*abs (xn)) %total energy in real time
Effttotal=Ts/N*sum (abs (Xk).*abs (Xk)) %total energy in x (t) using fft
