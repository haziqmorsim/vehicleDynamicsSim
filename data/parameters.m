% parameters.m
% Vehicle and simulation parameters

% Vehicle parameters
m = 1500;         % mass (kg)
Cd = 0.32;        % drag coefficient
A = 2.2;          % frontal area (m^2)
rho = 1.225;      % air density (kg/m^3)
Crr = 0.015;      % rolling resistance coefficient
g = 9.81;         % gravity (m/s^2)

% Lateral dynamics parameters
Iz = 2500;        % yaw moment of inertia (kg.m^2)
a = 1.2;          % CG to front axle (m)
b = 1.6;          % CG to rear axle (m)
Cf = 80000;       % cornering stiffness front (N/rad)
Cr = 80000;       % cornering stiffness rear (N/rad)

% Simulation settings
dt = 0.01;
T = 10;
time = 0:dt:T;

% Initial conditions
v0 = 0;           % initial speed (m/s)
beta0 = 0;        % sideslip angle (rad)
r0 = 0;           % yaw rate (rad/s)
