function gradient_descent(init_point)
    disp('===========================================================')
    disp('============== start gradient descent method ==============')

    % [x, y] = init_point;
    x = init_point(1);
    y = init_point(2);

    points = [[x, y]];
    obj = [];
    step_size = [];
    grad_res = [];
    while (1)
        % update the value of x and y
        [val, nabla] = Rosenbrock(x, y);
        % [x, y] = [x, y] - 0.001 * nabla;
        x = x - 0.001 * nabla(1);
        y = y - 0.001 * nabla(2);
        
        points = [points; [x, y]];
        obj = [obj, val];
        step_size = [step_size, 0.001];
        grad_res = [grad_res, norm(nabla)];

        [newval, new_nabla] = Rosenbrock(x, y);
        if (abs(newval - val) < 1e-15)
            break;
        end
    end

    print_info(obj, step_size, grad_res);
    plot_trace(points, 1, 'gradient descent method');

    disp('============= finished gradient descent method =============')
    disp('============================================================')
end