function s = spiral_diag_sum(n)
s = 1;
x = 1;
if n >= 3
    for i = 1:2:n-2
        for j = i^2+2*x:i+1:(i+2)^2
            s = s+j;
        end
        x = x+1
    end
end
 

function s = spiral_diag_sum(n)
%   The last element is always n square and it is in the corner.
%   A simple arithmetic expression gives the sum of the four corners.
%   Do this for a series of odd numbers from 3 to n.
%   Add 1 for the starting value in the center

    v = 3:2:n;
    s = 1 + sum(4*v.^2 - 6*(v-1)); 
end