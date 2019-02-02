function x = metode_newton(x0, batas_galat, fun, dfun)
    %return string if no answer found
    %Setelah keluar fungsi harus dicek keluarannya apa....
    max_iter = 1000;
    i = 0;
    if dfun(x0) < batas_galat
        x = "Error";
    else
        next_x = x0 - (fun(x0)/dfun(x0));
        galat = abs((next_x - x0)/next_x);
        while galat > batas_galat && i < max_iter
            x0 = next_x;
            if dfun(x0) < batas_galat
                next_x = "Error";
                break;
            else
                next_x = x0 - (fun(x0)/dfun(x0));
                galat = abs((next_x - x0)/next_x);
                i = i+1;
            end
        end
        
        x = next_x;
    end
end
