function out = exp_average(in,a)
persistent b;
persistent output;
if isempty(b)
    output = in;
    b = 0.1;
elseif nargin == 2
    b = a;
    output = in;
end
out = b*in + (1-b)*output;
output = out;

