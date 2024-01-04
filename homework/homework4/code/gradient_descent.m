function gradient_descent()
    disp('===========================================================')
    disp('============== start gradient descent method ==============')
    disp('k(step)   x_k          y_k    ||f(x_k, y_k)||   lr     ||d||')
    disp('===========================================================')

    % (x, y) are random initial points
    x = rand() * 2 - 1;
    y = rand() * 2 - 1;

    points = [];
    points = [points, [x, y]];
    obj = [];
    step_size = [];
    grad_res = [];
    while (1)
        % update the value of x and y
        [val, nabla] = Rosenbrock(x, y);
        % [x, y] = [x, y] - 0.001 * nabla;
        x = x - 0.002 * nabla(1);
        y = y - 0.002 * nabla(2);
        
        points = [points; [x, y]];
        obj = [obj, val];
        step_size = [step_size, 0.001];
        grad_res = [grad_res, norm(nabla)];

        % [newval, new_nabla] = Rosenbrock(x, y);
        if (norm(nabla) < 1e-3)
            break;
        end
    end

    print_info(obj, points, step_size, grad_res);
    plot_trace(points, 1, 'gradient descent method');

    disp('============= finished gradient descent method =============')
    disp('============================================================')
end