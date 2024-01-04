function print_info(max_iter, obj, points, step_size, grad_res)
    upper = max_iter - 1;
    for i = max(1 , max_iter - 10):upper
        fprintf('%d %.4e %.4e %.4e %.4e %.4e\n', i, points(i, 1), points(i, 2), obj(i), step_size(i), grad_res(i));
    end
    fprintf('%d %.4e %.4e %.4e    ----       ----   \n', max_iter, points(max_iter, 1), points(max_iter, 2), obj(max_iter));
end