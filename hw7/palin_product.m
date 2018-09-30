function n = palin_product(dig, lim)
    n = 0;
    for ii = 10^(dig-1):10^dig-1
        for jj = 10^(dig-1):ii
            p = ii*jj;
            if p >= lim
                continue;
            elseif palindrome(p) && p > n
                n = p;
            end
        end
    end
end
function isp = palindrome(p)
    txt = num2str(p);
    isp = strcmp(txt,fliplr(txt));
end


                
    
    