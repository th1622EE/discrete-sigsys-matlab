a=[1 0.6];
b=[1];
x=impulsesignal(0, -10, 20);% generating the input
n=[-10:20];
impulse=filter(b, a, x); %the output due to x(n)
subplot(1, 3, 1)
stem(n,impulse);xlabel('n');title('The impulse response');
axis([-10 20 -1 1])
x=stepsignal(0, -10, 20);
step=filter(b, a, x); %the output due to the step input
subplot(1, 3, 2)
axis([-10 20 0 1])
stem(n,step);xlabel('n');title('The step response');
x=0.5*sin(n);
axis([-10 20 -1 1])
sinusoidal = filter(b, a, x);
subplot(1, 3, 3);axis([-10 20 0 1])
stem(n,sinusoidal);xlabel('n');
title('The sinusoidal response');
axis([-10 20 -1 1])
