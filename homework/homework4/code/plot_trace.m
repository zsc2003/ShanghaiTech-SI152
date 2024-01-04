function plot_trace(max_iter, points, id, name)
    points = points(1 : max_iter - 1, :);

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
