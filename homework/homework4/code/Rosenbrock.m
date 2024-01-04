% f(x, y) = (1-x)^2+100(y-x^2)^2
function [val, nabla, Hessian] = Rosenbrock(x,y)
    val = (1 - x) ^ 2 + 100 * (y - x ^ 2) ^ 2;
    nabla = [-2 * (1 - x) - 400 * x * (y - x ^ 2); 200 * (y - x ^ 2)];
    Hessian = [2 - 400 * y + 1200 * x ^ 2, -400 * x; -400 * x, 200];
end