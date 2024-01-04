function Quasi_Newton_method()
    disp('===========================================================')
    disp('================ start Quasi-Newton method ================')
    disp(' k    x_k        y_k     f(x_k, y_k) step size    ||d||  ')
    disp('== ========== ========== ========== ========== ==========')

    % (x, y) are random initial points
    x = rand() * 2 - 1;
    y = rand() * 2 - 1;

    grad_res = zeros(100, 1);
    grad_record = zeros(100, 2);
    obj = zeros(100, 1);
    step_size = zeros(100, 1);
    points = zeros(100, 2);

    [val, grad, hess] = Rosenbrock(x, y);
    obj(1) = val;
    grad_res(1) = norm(grad);
    grad_record(1, :) = [0, 0];
    points(1, :) = [x, y];

    H_inverse = eye(2);
    for iter = 2:100
        [val, grad, hess] = Rosenbrock(x, y);
        
        d = -H_inverse * grad;

        % use Armijo rule to determine the step size
        alpha = 1;
        gamma = 0.5;
        while (Rosenbrock(x + alpha * d(1), y + alpha * d(2)) > val + gamma * alpha * grad' * d)
            alpha = alpha * gamma;
        end

        x = x + alpha * d(1);
        y = y + alpha * d(2);

        s_k = [x, y] - points(iter - 1, :);
        s_k = s_k';
        
        y_k = (grad' - grad_record(iter - 1, :))';

        % the condition of update H_k:
        if s_k' * y_k > 0
            H_inverse = (eye(2) - s_k * y_k' / (y_k' * s_k)) * H_inverse * (eye(2) - y_k * s_k' / (y_k' * s_k)) + s_k * s_k' / (y_k' * s_k);
        end
        
        points(iter, :) = [x, y];
        obj(iter) = val;
        step_size(iter - 1) = alpha;
        grad_res(iter - 1) = norm(grad);

        grad_record(iter, : ) = grad;
        
        if (norm(d) < 1e-4)
            break;
        end
    end

    print_info(iter, obj, points, step_size, grad_res);
    plot_trace(iter, points, 3, 'Quasi-Newton method');

    disp('=============== finished Quasi-Newton method ===============')
    disp('============================================================')
end