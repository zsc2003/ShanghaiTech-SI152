function Newton_method(init_point)
    disp('===========================================================')
    disp('=================== start Newton method ===================')

    % [x, y] = init_point;
    x = init_point(1);
    y = init_point(2);

    points = [[x, y]];
    obj = [];
    step_size = [];
    grad_res = [];


    print_info(obj, step_size, grad_res);
    plot_trace(points, 2, 'Newton method');

    disp('================== finished Newton method ==================')
    disp('============================================================')
end