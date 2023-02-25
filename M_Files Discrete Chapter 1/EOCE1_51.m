n1 = [0 1 2 3]; % index for first signal
x1= [0 1 2 3];
n2 = [-1 0 1 2]; %index for the second signal
x2= [0 1 2 3];% with same value but different indices
% the starting index of the sum
n = min (min (n1), min (n2)): max (max (n1), max (n2)); 
%initializing x1i to zeros with the new index
x1i = zeros (1, length (n)); x2i = x1i; %copying x1i into x2i
% now we fill x1i and x2i
x1i (find ((n >= min (n1)) & (n <= max (n1)) == 1)) = x1;
x2i (find ((n >= min (n2)) & (n <= max (n2)) == 1)) = x2;
x = x1i + x2i % the addition result
