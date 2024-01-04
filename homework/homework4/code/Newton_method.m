function Newton_method()
    disp('===========================================================')
    disp('=================== start Newton method ===================')
    disp('k    x_k        y_k     f(x_k, y_k) step size    ||d||  ')
    disp('= ========== ========== ========== ========== ==========')


    % (x, y) are random initial points
    x = rand() * 2 - 1;
    y = rand() * 2 - 1;

    grad_res = zeros(1, 100);
    obj = zeros(1, 100);
    step_size = zeros(1, 100);
    points = zeros(100, 2);

    for iter = 2:100
        [val, grad, Hessian] = Rosenbrock(x, y);

        % if Hessian is not invertible, then output error
        if (abs(det(Hessian)) < 1e-7)
            disp(' Error : Hessian matrix is invertible ');
            break;
        end

        d = -inv(Hessian) * grad;
        x = x + d(1);
        y = y + d(2);
        
        points(iter, :) = [x, y];
        obj(iter) = val;
        step_size(iter - 1) = 1;
        grad_res(iter - 1) = norm(grad);

        if (norm(d) < 1e-4)
            break;
        end
    end


    print_info(iter, obj, points, step_size, grad_res);
    plot_trace(iter, points, 2, 'Newton method');

    disp('================== finished Newton method ==================')
    disp('============================================================')
end