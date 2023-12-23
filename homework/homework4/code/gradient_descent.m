% f(x,y)=(1-x)^2+100(y-x^2)^2
% plot the function
x=-2:0.1:2;
y=-2:0.1:2;
[X,Y]=meshgrid(x,y);
Z=(1-X).^2+100*(Y-X.^2).^2;
figure(1)
surf(X,Y,Z)
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y)=(1-x)^2+100(y-x^2)^2')

% plot the contour
figure(2)
contour(X,Y,Z,20)
xlabel('x')
ylabel('y')
title('f(x,y)=(1-x)^2+100(y-x^2)^2')
