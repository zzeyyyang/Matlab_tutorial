function sum_ = sum3and5muls(n)
x = 3:3:n;
y = 5:5:n;
z = 15:15:n;
sum_ = sum(x)+sum(y)-sum(z);
end