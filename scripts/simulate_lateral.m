function [Beta, R] = simulate_lateral(params, V)
% Simulate lateral vehicle dynamics using Bicycle model

% Unpack parameters
m = params.m; Iz = params.Iz; a = params.a; b = params.b;
Cf = params.Cf; Cr = params.Cr; dt = params.dt;
v = V(end);   % use final speed as constant for lateral sim
delta = 5 * pi/180;  % 5 degrees steering

time = 0:dt:params.T;
beta = params.beta0;
r = params.r0;

Beta = zeros(size(time));
R = zeros(size(time));

for i = 2:length(time)
    Fyf = -Cf * (beta + (a * r / v) - delta);
    Fyr = -Cr * (beta - (b * r / v));

    r_dot = (a * Fyf - b * Fyr) / Iz;
    beta_dot = (Fyf + Fyr) / (m * v) - r;

    r = r + r_dot * dt;
    beta = beta + beta_dot * dt;

    R(i) = r;
    Beta(i) = beta;
end
end
