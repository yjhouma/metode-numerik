function x = secant_method(x0,x1,batas_galat, fun)
    %sebelumnya fungsi harus sudah di cek kalau |f(x0) - f(x1)| > e
    %return string kalau misal terjadi fa-fb = 0 di dalam loop
    a=x0;
    b=x1;
    fa = fun(a);
    fb = fun(b);
    a = a - fa*(a-b)/(fa-fb);
    fa = fun(a);
    galat = abs((a-b)/a);
    while galat > batas_galat
        if abs(fa-fb) < batas_galat
            a = "Error";
            break;
        end
        temp = a;
        a = a - fa*(a-b)/(fa-fb);
        b = temp;
        fa = fun(a);
        fb = fun(b);
        galat = abs((a-b)/a);
    end
    x = a;
end