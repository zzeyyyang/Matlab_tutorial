function M = reverse_diag(n)
M = zeros(n);
M(n:max([1,n-1]):max([n,n^2-1])) = 1;
end