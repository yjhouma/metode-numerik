function [mat, tar] = eliminasi_gauss_pivot(mat_input, target)
    n = length(mat_input);
    X = mat_input;
    Y = target;
    for i = 1:n-1
        [val, idx] = max(abs(X(i:end,i)));
        idx = idx+i-1;
        if idx ~= i
            [X, Y] = swap_baris(X, Y, i, idx);
        end
        if abs(X(i,i)) < 0.00001
            X = "Error";
            Y = "Error"; 
            break
        end
        for j = i+1:n        
            temp = X(j,:);
            p = temp(i)/X(i,i);
            X(j,:) = temp - (p)*X(i,:);
            Y(j) = Y(j) - p*Y(i);
        end
    end
    mat = X;
    tar = Y;
end

function [a,b] = swap_baris(X, Y, i, idx)
    temp = X(i,:);
    X(i,:) = X(idx,:);
    X(idx,:) = temp;
    temp = Y(i);
    Y(i) = Y(idx);
    Y(idx) = temp;
    a = X;
    b = Y;
end