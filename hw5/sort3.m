function [a,b,c] = sort3(B)
if B(1) >= B(2)
	t = B(1);
	B(1) = B(2);
	B(2) = t;
end
if B(2) >= B(3)
	t = B(2);
	B(2) = B(3);
	B(3) = t;
end
if B(1) >= B(2)
    t = B(1);
	B(1) = B(2);
	B(2) = t;
end
a = B(1);
b = B(2);
c = B(3);