function X = penyulihan_mundur(kons, target)
    %Matriks kons merupakan matriks segitiga atas
    x = [];
    n = length(kons);
    for i = n:-1:1
        k = target(i);
        for j = i+1:n
            k = k - (kons(i,j)*x(j));
        end
        x(i) = k/kons(i,i);
    end
    X = x;
end