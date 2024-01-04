function Newton_method()
    disp('===========================================================')
    disp('=================== start Newton method ===================')

    % (x, y) are random initial points
    x = rand();
    y = rand();

    points = [x, y];
    obj = [];
    step_size = [];
    grad_res = [];


    print_info(obj, step_size, grad_res);
    plot_trace(points, 2, 'Newton method');

    disp('================== finished Newton method ==================')
    disp('============================================================')
end