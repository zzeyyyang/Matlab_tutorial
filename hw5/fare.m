function money = fare(distance,age)
if distance <= 1
    money = 2;
elseif distance > 1 && distance <= 10
    money = 2 + round(distance-1)*0.25;
else
    money = 4.25 + round(distance-10)*0.1;
end
if age <= 18 || age >= 60
    money = 0.8*money;
end