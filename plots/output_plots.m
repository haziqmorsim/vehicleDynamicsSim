load('results.mat');

time = 0:params.dt:params.T;

% Longitudinal speed
figure;
plot(time, V);
xlabel('Time (s)');
ylabel('Speed (m/s)');
title('Longitudinal Vehicle Speed');
grid on;

% Yaw rate
figure;
plot(time, R);
xlabel('Time (s)');
ylabel('Yaw Rate (rad/s)');
title('Yaw Rate vs Time');
grid on;

% Sideslip angle
figure;
plot(time, Beta);
xlabel('Time (s)');
ylabel('Sideslip Angle (rad)');
title('Sideslip Angle vs Time');
grid on;
