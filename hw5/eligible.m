function a = eligible(v,q)
a = v > 88 && q > 88 && mean([v q]) >= 92;
end