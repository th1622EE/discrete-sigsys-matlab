n = [-3: 3]; % generate the time index
x = stepsignal (0, -3, 3) -3 * impulsesignal (1, -3, 3); stem (n, x)
