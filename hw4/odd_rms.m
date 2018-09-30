function orms = odd_rms(nn)
orms = sqrt(mean((1:2:2*nn-1).^2));
end