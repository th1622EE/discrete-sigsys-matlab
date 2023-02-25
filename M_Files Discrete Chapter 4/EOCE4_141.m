num = [1];
den = [1 -.5 -.1 .2];
y0 = [1 2 3];% the given initial condition
ic = filtic(num, den,y0); %the derived initial condition
