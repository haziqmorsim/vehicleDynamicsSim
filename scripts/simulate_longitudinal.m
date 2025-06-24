function V = simulate_longitudinal(params)
% Simulate longitudinal vehicle dynamics

% Unpack parameters
m = params.m; Cd = params.Cd; A = params.A;
rho = params.rho; Crr = params.Crr; g = params.g;
dt = params.dt; T = params.T; v0 = params.v0;

time = 0:dt:T;
v = v0;
V = zeros(size(time));

for i = 2:length(time)
    F_traction = 4000;  % N (constant drive)
    F_drag = 0.5 * Cd * A * rho * v^2;
    F_rolling = Crr * m * g;
    F_brake = 0;

    a_long = (F_traction - F_drag - F_rolling - F_brake) / m;
    v = v + a_long * dt;
    V(i) = v;
end
end
