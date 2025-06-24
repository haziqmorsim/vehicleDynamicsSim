Vehicle Dynamics Simulation
============================
This MATLAB project simulates both longitudinal and lateral vehicle dynamics.

Contents:
- data/parameters.m         : Vehicle parameters and initial conditions
- scripts/simulate_longitudinal.m : Longitudinal dynamics function
- scripts/simulate_lateral.m      : Lateral dynamics function
- scripts/run_simulation.m        : Main driver script
- plots/output_plots.m           : Plot results
- simulink/vehicle_dynamics.slx  : Simulink model (see layout description)
- results.mat                    : Generated after running simulation

Instructions:
1. Run 'scripts/run_simulation.m' to generate simulation data.
2. Run 'plots/output_plots.m' to visualize results.
3. Open 'simulink/vehicle_dynamics.slx' and follow the layout description to build the Simulink model.
