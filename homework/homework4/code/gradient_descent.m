function gradient_descent()
    disp('===========================================================')
    disp('============== start gradient descent method ==============')
    disp(' k       x_k        y_k    f(x_k, y_k) step size    ||d||  ')
    disp('==== ========== ========== ========== ========== ==========')

    %  (x, y) are random initial points
    x = rand() * 2 - 1;
    y = rand() * 2 - 1;

    grad_res = zeros(1, 10000);
    obj = zeros(1, 10000);
    step_size = zeros(1, 10000);
    points = zeros(10000, 2);

    [val, grad, Hessian] = Rosenbrock(x, y);
    obj(1) = val;
    grad_res(1) = norm(grad);
    points(1, :) = [x, y];

    for iter = 2:10000
        % update the value of x and y
        [val, grad, Hessian] = Rosenbrock(x, y);
        % [x, y] = [x, y] - 0.002 * nabla;
        
        x = x - 0.002 * grad(1);
        y = y - 0.002 * grad(2);

        points(iter, :) = [x, y];
        obj(iter) = val;
        step_size(iter - 1) = 0.002;
        grad_res(iter - 1) = norm(grad);
        
        if (norm(grad) < 1e-4)
            break;
        end
    end

    print_info(iter, obj, points, step_size, grad_res);
    plot_trace(iter, points, 1, 'gradient descent method');

    disp('============= finished gradient descent method =============')
    disp('============================================================')
end