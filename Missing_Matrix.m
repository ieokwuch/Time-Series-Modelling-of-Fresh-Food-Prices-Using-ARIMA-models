% Using Least Square Approximations to estimate missing values in the time
% series

% A matrix M must be obtained which would be used to calculate the values
% of the missing points. 

M1 = zeros(24,47);
W1 = [];
for i = 1:24
    for j = 1:47
        Z1 = i^j;
        W1 = [W1, Z1];
    end
    M1(i,:)= W1;
    W1 = [];
end

M2 = zeros(24,47);
W2 = [];
for k = 37:60
    for l = 1:47
        Z2 = k^l;
        W2 = [W2, Z2];
    end 
    M2(k-36,:) = W2;
    W2 = [];
end

%merge M1 and M2
M = [M1;M2];
a = ones(48,1);
M = [a, M];

%read the values of the selected points
values = xlsread('MissingV.xlsx',1,'D1:D48');

%v represents the coefficients of the 48th degree polynomial
v = inv(M'*M)*M'*values;

%now calculate the values of the missing points
TOTAL = 0;
missingset = [];
for m = 25:36
    for n = 1:48
        total = v(n)*(m^(n-1));
        TOTAL = TOTAL + total;
    end
    missingset = [missingset;TOTAL];
    TOTAL = 0;
    total = 0;
end