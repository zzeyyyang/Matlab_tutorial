function A = logiunpack(B)
n = length(B);
A = false(n);
for i = 1:n
    for j = 1:length(B{i})
        A(i,B{i}(j)) = true;
    end
end

        
        