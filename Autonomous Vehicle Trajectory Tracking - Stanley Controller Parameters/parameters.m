%% Autonomous Vehicle Trajectory Tracking - Stanley Controller Parameters
% Author: Mohamed Ragab
% Program: Mechatronics & Robotics Engineering

clear; clc;

%% 1. Simulation & Solver Configuration
dt = 0.01;              % Sample time (s) [100 Hz]
T_final = 60;           % Total simulation time (s)

%% 2. Vehicle Kinematics & Physical Parameters
L = 2.8;                % Wheelbase (m)
v_ref = 10.0;           % Vehicle nominal speed (m/s) -> 36 km/h

% Actuator Physical Limits (Steering System Constraints)
max_steer_rad = 0.5236; % Maximum steering angle (+/- 30 degrees)
steer_rate_lim = 0.8727;% Maximum steering angular rate (+/- 50 deg/s)

%% 3. Reference Trajectory Parameters (Sine Wave Path)
A = 5.0;                % Trajectory Amplitude (m)
omega = 0.05;           % Spatial/Temporal Frequency (rad/s)

%% 4. Stanley Controller Parameters & Gains
K = 0.75;               % Cross-track error gain (Scaling for e_y correction)
Ks = 1.0;              % Softening constant (m/s) (Prevents chattering at low v)

%% 5. Vehicle Initial States
X_0 = 0.0;              % Initial X position (m)
Y_0 = 1.0;              % Initial Y position (m) -> 1m initial offset
theta_0 = 0.0;          % Initial heading angle (rad)

disp('==================================================');
disp('   Project Parameters Successfully Loaded to Workspace!  ');
disp('==================================================');

