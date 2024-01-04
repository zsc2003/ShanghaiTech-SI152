function Quasi_Newton_method()
    disp('===========================================================')
    disp('================ start Quasi-Newton method ================')
    disp(' k       x_k            y_k          ||f(x_k, y_k)||   ||d||  step_size')
    disp('===========================================================')


    % (x, y) are random initial points
    x = rand();
    y = rand();

    points = [x, y];
    obj = [];
    step_size = [];
    grad_res = [];


    print_info(obj, step_size, grad_res);
    plot_trace(points, 3, 'Quasi-Newton method');

    disp('=============== finished Quasi-Newton method ===============')
    disp('============================================================')
end