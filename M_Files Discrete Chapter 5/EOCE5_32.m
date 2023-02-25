fs=10000;Ts=1/fs;
N=16;
n=0:15; % 16-points fft
t=n*Ts;
xn=sin (2*pi*2000*t) +0.5*sin (2*pi*4000*t);
hn=hanning (16); % 16-points Hanning window
wn=xn.*hn'; % truncation using Hanning window
Xkrec=fft (xn);
Xkhan=fft (wn);
Xkrecappr=Ts*Xkrec;
Xkhanappr=Ts*Xkhan;
k=n*fs/N; % the frequency axis
subplot (2,1,1);stem (k,abs (Xkrecappr));
title ('Approximation using rectangular windows and the DFT');
subplot (2,1,2);stem (k,abs (Xkhanappr));
xlabel ('Frequency in Hertz');
title ('Approximation using Hanning windows and the DFT');
