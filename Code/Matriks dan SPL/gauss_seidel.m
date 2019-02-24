function X_ans = gauss_seidel(kons, target, X, batas_galat)
    n = length(kons);
    galat = inf;
    i = 0;
    while abs(galat) > batas_galat && i < 10000
        galat = 0;
        for i = 1:n
            sum = 0;
            for j = 1:n
                if j ~= i
                    sum = sum + X(j)*kons(i,j);
                end
            end
            a = (target(i) - sum)/kons(i,i);
            galat_new = abs((a - X(i))/a);
            X(i) = a;
            if galat_new > galat
                galat = galat_new;
            end
        end
        i = i + 1;
    end
    if i < 10000
        X_ans = X;
    else
        X_ans = "Error, tidak konvergen";
    end
end