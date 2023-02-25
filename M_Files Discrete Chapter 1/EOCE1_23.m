%index where you want the impulse signal to have a value 
n0 = 1;
%we also need a fixed interval for the signal 
n1= -5;
n2 = 5;
n = [n1:n2]; %forming the index n
%this will generate the impulse at the specified index
x = [(n - n0) == 0];
stem (n, x);
