function found = small_elements(A)
    [row col] = size(A);
    found = [];
    for jj = 1:col
        for ii = 1:row
            if A(ii,jj) < ii * jj
                found = [found; ii jj];
            end
        end
    end
end


function I = small_elements(X)
%   The matrix multiplication of a column vector of the row numbers and 
%   a row vector of the column numbers gives the indices of the matrix. 
    [r,c] = size(X);
    [x,y] = find(X < ((1:r)' * (1:c)));
    I = [x(:), y(:)];
end