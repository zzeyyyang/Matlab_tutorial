function [e,k] = approximate_e(a)
k = 0;
e = 1;
x = exp(1);
F = 1;
while abs(e - x) > a
    k = k+1;
    F = F*k;
    e = e + 1/F;
end