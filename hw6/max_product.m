function [product,ind] = max_product(v,n)
if length(v) < n || isempty(v)
    product = 0;
    ind = -1;
else
    product = -inf;
    for i = 1:length(v)-n+1
        pro = prod(v(i:i -1 + n));
        if pro > product
            product = pro;
            ind = i;
        end
    end
end


function [lp,li] = max_product (V,n)
    e = length(V);
    if n>e
        lp = 0; 
        li = -1;
    else
        P = -Inf(1,e-n+1);            % preallocate product vector
        for i = 1:e-n+1                
            P(i) = prod(V(i:i+n-1));  % populate product vector
        end
        [lp,li] = max(P);             % return maximum product and its location
    end
end