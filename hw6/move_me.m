function w = move_me(v,a)
    if nargin<2, 
        a = 0; 
    end
    w = [v(v ~= a) v(v == a)];
end

function w = move_me(v,a)
    if nargin < 2
        a = 0;
    end
    w = [];
    vv = [];
    for ii = 1:length(v)
        if v(ii) ~= a
            w(end+1) = v(ii);
        else
            vv(end+1) = a;
        end
    end
    w = [w vv];
end