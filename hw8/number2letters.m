function len = number2letters(n)
m = num2str(n);
l = length(m);
num = {'','one','two','three','four','five','six','seven','eight','nine','ten'};
num2 = {'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'};
num3 = {'','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'};
len1 = 0;
len2 = 0;
len3 = 0;
if n > 99
    a = num{str2num(m(1)) + 1};
    len1 = length(a) + length('hundred');
    n = mod(n,100);
    if n >= 20
        b = num3{str2num(m(l-1))};
        len2 = length(b);
        c = num{str2num(m(l)) + 1};
        len3 = length(c);
    end
    if n > 10 && n < 20
        b = num2{str2num(m(l))};
        len2 = length(b);
    end
end
if n >= 20
    b = num3{str2num(m(l-1))};
    len2 = length(b);
    c = num{str2num(m(l)) + 1};
    len3 = length(c);
end
if n > 10 && n < 20
    b = num2{str2num(m(l))};
    len2 = length(b);
end
if n == 10
    len2 = length('ten');
end
if n < 10
    c = num{str2num(m(l)) + 1};
    len3 = length(c);
end
len = len1 + len2 + len3;

function m = number2letters (n)

% A is a 3x10 array of the letter counts of the words used to form various numbers, with
% units in row 1, "teens" in row 2 and tens in row 3. For the supplied number, we first
% determine the number of units, tens and hundreds. These three values determine the
% words and thus the letter count to be returned.
 
  A = [ 0 3 3 5 4 4 3 5 5 4; ...              % units
        3 6 6 8 8 7 7 9 8 8; ...              % "teens"
        0 0 6 6 5 5 5 7 6 6];                 % tens
  h = fix(n/100); 
  t = fix(rem(n,100)/10); 
  u = rem(n,10);
  if h>0,     m = A(1,h+1)+7;                % h 'hundred'
  else        m = 0; 
  end
  switch t
    case 0,   m = m+A(1,u+1);                % units only
    case 1,   m = m+A(2,u+1);                % "teens" only
    otherwise m = m+A(3,t+1)+A(1,u+1);       % tens and units
  end 
end