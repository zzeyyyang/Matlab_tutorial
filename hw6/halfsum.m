function s = halfsum(A)
    [r c] = size(A);
    for ii = 1:r
        for jj = 1:c
            if ii < r-jj+1
                A(ii,jj) = 0;
            end
        end
    end
    s = sum(A(:));
end


function h = halfsum(A)
    % there is a built-in MATLAB function for almost anything...

    h = sum(sum(triu(flipud(A))))
end