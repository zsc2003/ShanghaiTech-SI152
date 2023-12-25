function Quasi_Newton_method(init_point)
    disp('===========================================================')
    disp('================ start Quasi-Newton method ================')

    % [x, y] = init_point;
    x = init_point(1);
    y = init_point(2);

    points = [[x, y]];
    obj = [];
    step_size = [];
    grad_res = [];


    print_info(obj, step_size, grad_res);
    plot_trace(points, 3)

    disp('=============== finished Quasi-Newton method ===============')
    disp('============================================================')
end