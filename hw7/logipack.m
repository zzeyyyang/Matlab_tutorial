function A = logipack(B)
for i = 1:size(B,1)
    a = [];
    for j = 1:size(B,2)
        if B(i,j)
            a = [a j];
        end
            A{i} = a;
    end
end
         
function cv = logipack(L)
    [r c] = size(L);
    cv = cell(1,r);
    for ii = 1:r
        cv{ii} = find(L(ii,:));
        if isempty(cv{ii})      % find can return 1x0 empty arrays
            cv{ii} = [];        % so we make sure it is 0x0
        end
    end
end 