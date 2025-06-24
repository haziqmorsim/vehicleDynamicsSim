clear; clc; close all;

% Load parameters
params = load('data/parameters.m');
params = evalc('params');   % get params in workspace

% Run longitudinal dynamics
V = simulate_longitudinal(params);

% Run lateral dynamics
[Beta, R] = simulate_lateral(params, V);

% Save results
save('results.mat', 'V', 'Beta', 'R', 'params');
