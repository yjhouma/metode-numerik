function [mat, tar] = eliminasi_gauss(mat_input, target)
    n = length(mat_input);
    X = mat_input;
    Y = target;
    for i = 1:n-1
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