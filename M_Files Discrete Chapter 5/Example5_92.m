xn= [1 0 1 1 0];
Xk=fft (xn);
Etotal=sum (abs (xn).*abs (xn)) %total energy in real time
Effttotal=1/5*sum (abs (Xk).*abs (Xk)) %total energy in x (n) using fft
