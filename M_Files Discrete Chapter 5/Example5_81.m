syms t;% symbolic constants
T=1; %period of the signal
w=2*pi/T;
for k=0:3
%performing the integration to calculate the coefficients ck=1/T*int (sin(w*t) *exp (?j*w*k*t),t,0,1)
end
