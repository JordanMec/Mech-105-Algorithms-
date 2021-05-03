% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;
% Define the function to be solved for. Is the angle specified in radians or degrees?
func = @(t) (mu*m*g)./(cosd(t)+mu*sind(t))-F;
% THINK, what makes range sense for angle?
thetarange = [-90:90];
% Plot your function. Does plotting give you an idea about where the root is?
plot (thetarange, func(thetarange));
xlabel= ('Theta');
ylable= ('F(x)');
title= ('Plot');
% Finaly solve for the root using the bisection script given to you, which can be called as:
lower_bound = (-90);
upper_bound = (90);
[angle, fx, ea, iter] = bisect(func, lower_bound, upper_bound);

fprintf('Root: %f', angle);
fprintf('F(x): %f', fx);
fprintf('Approximate Error: %f', ea);
fprintf('Iteration: %f', iter);
% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations