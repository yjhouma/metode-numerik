function x = metode_posisi_palsu(a, b, batas_galat, fun)
    %Sebelum masuk fungsi fa dan fb sudah dicek terlebih dahulu
    fa = fun(a);
    fb = fun(b);
    c_lama = 2*b - a;
    c = a - (fa*(a-b)/(fa-fb));
    fc = fun(c);
    galat = abs(c-c_lama);
    while galat > batas_galat
        if fa*fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
        c_lama = c;
        c = a - fa*(a-b)/(fa-fb);
        fc = fun(c);
        galat = abs(c-c_lama);
    end
    x = c;
end