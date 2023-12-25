function print_info(obj, step_size, grad_res)
    for i = max(1 , length(obj) - 10):length(obj)
        fprintf('Step %d: obj = %f, step size = %f, gradient residual = %f\n', i, obj(i), step_size(i), grad_res(i));
    end
end