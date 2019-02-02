function x = metode_bagi_dua(titik_kiri, titik_kanan, batas_galat, fun)
    %Sebelum masuk fungsi harus di pastikan akar ada
    %diantara titik kiri dan titik kanan
    f_kiri = fun(titik_kiri);
    f_kanan = fun(titik_kanan);
    c = (titik_kiri + titik_kanan)/2;
    fc = fun(c);
    galat = abs(fc);
    while galat > batas_galat
        if f_kiri*fc < 0
            titik_kanan = c;
            f_kanan = fc;
        else
            titik_kiri = c;
            f_kanan = fc;
        end
        c = (titik_kiri + titik_kanan)/2;
        fc = fun(c);
        galat = abs(titik_kiri - titik_kanan); 
    end
    x = c;
end
