function print_info(obj, points, step_size, grad_res)
    for i = max(1 , length(obj) - 10):length(obj)
        fprintf('%d %e %e %e %e %e\n', i, points(i, 1), points(i, 2), obj(i), step_size(i), grad_res(i));
    end
end