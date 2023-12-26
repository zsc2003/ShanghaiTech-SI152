function plot_trace(points, id, name)
    % plot the contour of of Rosenbrock function
    % then plot the trace of the points
    % points is a matrix of size (n, 2)
    % each row is a point
    % the first column is x, the second column is y
    % the last point is marked with a red star

    % plot the contour of Rosenbrock function
    x = linspace(-2, 2, 100);
    y = linspace(-1, 3, 100);
    [X, Y] = meshgrid(x, y);
    Z = 100 * (Y - X .^ 2) .^ 2 + (1 - X) .^ 2;
    figure(id);
    contour(X, Y, Z, 20);
    hold on;

    % plot the trace of the points
    plot(points(:, 1), points(:, 2), 'b-o');

    % mark the last point with a red star
    plot(points(end, 1), points(end, 2), 'r*');

    % set the axis
    axis([-2, 2, -1, 3]);

    % set name
    title(name);
    
    
end
