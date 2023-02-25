n = [-3: 3];
x = 3 * stepsignal (3, -3, 3) + impulsesignal (2, -3, 3)
+ xreflected (stepsignal (0, -3, 3), n);
