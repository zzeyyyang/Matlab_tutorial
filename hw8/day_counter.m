function Monday = day_counter(year)
if mod(year,4) == 0 && mod(year,100) ~= 0 || mod(year,400) == 0
    dayInMonth = [31,29,31,30,31,30,31,31,30,31,30,31];
else
    dayInMonth = [31,28,31,30,31,30,31,31,30,31,30,31];
end
Monday = 0;
days = 1;
start = 1;
for Year = 1777 : year
    if mod(Year - 1,4) == 0 && mod(Year - 1,100) ~= 0 || mod(Year - 1,400) == 0
        start = start + 366;
    else
        start = start + 365;
    end
end
start = mod(start,7);
if start == 1
     Monday = Monday + 1;
end
for i = 1 : 11
     days = dayInMonth(i) + days; 
     if mod(mod(days,7) + start - 1,7)== 1
         Monday = Monday + 1;
     end
end

function n = day_counter(year)
    months = [31 28 31 30 31 30 31 31 30 31 30 31];     % dyas of the months
    start = 1776;                                       
    y = year - start;                                   % years since 1776
    % number of days since January 1, 1776:
    ndays = y*365 + ceil(y/4) - floor((year-1)/100) + floor(start/100) + floor((year-1)/2000);
    % if leap year, need to adjust February:
    if mod(year,4) == 0 && (mod(year,100) ~= 0 || mod(year,400) == 0)
        months(2) = 29;
    end
    months = [0 cumsum(months(1:end-1))];               % number of days in the previous months
    n = sum(mod(ndays+months,7) == 0);                  % mod() == 0 means Monday
end