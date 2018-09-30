function num = dial(str)
    num = uint64(0);
    if length(str) > 16
        return;
    end
    for ii = 1:length(str)
        if str(ii) >= 'A' && str(ii) <= 'Z'
            str(ii) = map(str(ii));
        elseif ~(str(ii) >= '0' && str(ii) <= '9')
            return;
        end
    end
    num = uint64(str2num(str));
end
function ch = map(ch)
    m = '22233344455566677778889999';
    ch = m(ch - 'A' + 1);
end


function n = dial (s)
    if ~all(ismember(s,['0':'9','A':'Z'])) || length(s) > 16
        n = uint64(0);
    else
        map = '22233344455566677778889999';
        s(s>='A') = map(s(s>='A')-64);
        n = uint64(str2double(s)) ;
    end
end  