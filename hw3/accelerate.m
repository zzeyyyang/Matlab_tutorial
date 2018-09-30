function amag = accelerate(F1,F2,m)
F = F1 +F2;
f = sqrt(sum(F.^2));
amag = f/m;
end