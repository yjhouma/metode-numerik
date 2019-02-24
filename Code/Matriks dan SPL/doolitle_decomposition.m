function [L, U] = doolitle_decomposition(X)
    n = length(X);
    l = eye(n);
    u = eye(n);
    
    for k = 1:n
        %ISI U dulu
        sum = 0;
        for m = k:n
            for j = 1:k-1
                sum = sum + l(k,j)*u(j,m);
            end
            u(k,m) = X(k,m)- sum;
        end
        
        % ISI L
        for i = k+1:n
            sum = 0;
            for j = 1:k-1
                sum = sum + l(i,j)*u(j,k);
            end
            l(i,k) = (X(i,k)-sum)/u(k,k);
        end
    end
    
    L = l;
    U = u;
end