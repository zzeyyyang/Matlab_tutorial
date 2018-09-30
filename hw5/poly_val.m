function p = poly_val(c0,c,x)
c = c(:);
x = x(:);
if isempty(c)
    p = c0;
else
    p = c0 + sum(c'.*(x.^(1:length(c))));
end