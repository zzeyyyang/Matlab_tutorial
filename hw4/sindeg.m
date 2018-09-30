function [M,ave] = sindeg(deg)
M = sin(pi/180*deg);
ave = mean(M(:));
end