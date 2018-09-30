function [n,m] = fence(lng,seg)
n = ceil(lng/seg);
m = n+1;
end