clear
clc

%x = [8 3 -2 1;
%     4 12 4 3;
%     2 -2 9 3;
%     1 2 4 8];
 
%y = [2 -7 10 -5];

%[X, Y] = eliminasi_gauss_pivot(x,y)
%penyulihan_mundur(X,Y)

%metode_jacobi(x, y, [2 2 6 3], 0.000001)
%gauss_seidel(x, y, [2 2 6 3], 0.000001)

x = [2 -1 -2;
     -4 6 3;
     -4 -2 8];
 
[L, U] = doolitle_decomposition(x)