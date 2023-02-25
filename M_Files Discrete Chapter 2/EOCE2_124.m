a=[1 -1];
b=[1 2];
x=impulsesignal(0, 0, 20); % generating the input
n=[0:20];
impulse=filter(b, a, x); %the output due to x(n)
subplot(1, 2, 1)
stem(n, x); xlabel('n'); title('The input signal');
subplot(1, 2, 2)
stem(n, impulse); xlabel('n'); title('The impulse response');
