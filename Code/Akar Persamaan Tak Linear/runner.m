clear
clc


metode_bagi_dua(-3,3,0.0001,@f)
metode_newton(1.5,0.0001,@f,@df) 

function y = f(x)
    y = exp(x) + 2*x;
end

function dy = df(x)
    dy = exp(x) + 2;
end