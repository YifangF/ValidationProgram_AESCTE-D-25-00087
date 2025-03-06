
load('model_aero_data_20240414.mat');
% load('model_aero_data.mat');

%% aircraft parameters
ModelParam_mass = 31.9939;

% fixed wing parameters
% ModelParam_Sw = 1.066;
% ModelParam_c = 0.302;
% ModelParam_b = 3.73;
ModelParam_Sw = 0.869;
ModelParam_c = 0.26;
ModelParam_b = 3.47;

% ModelParam_CG = -0.135; % to airfoil leading edge
ModelParam_CG = -0.1387;
% ModelParam_CG_Z = 0.135;
ModelParam_CG_Z = 0.12;
% ModelParam_CP = -0.195; % to airfoil leading edge
ModelParam_CP = -0.165; 

% ModelParam_Ixx = 1.346;
% ModelParam_Iyy = 14.9;
% ModelParam_Izz = 14.44;
ModelParam_Ixx = 2.957616474;
% ModelParam_Iyy = 2.957616474;
ModelParam_Iyy = 5.552907742;
ModelParam_Izz = 8.264706552;
ModelParam_Ixy = 0;
ModelParam_Ixz = 0.483893873;
ModelParam_Iyz = 0;
ModelParam_Jmatrix = [ ModelParam_Ixx -ModelParam_Ixy -ModelParam_Ixz
                      -ModelParam_Ixy  ModelParam_Iyy -ModelParam_Iyz
                      -ModelParam_Ixz -ModelParam_Iyz  ModelParam_Izz];
% ModelParam_Jmatrix = diag([ModelParam_Ixx,ModelParam_Iyy,ModelParam_Izz]);
adp_x = (ModelParam_Ixx*ModelParam_Izz-ModelParam_Ixz^2)/ModelParam_Izz;
adp_z = (ModelParam_Ixx*ModelParam_Izz-ModelParam_Ixz^2)/ModelParam_Ixx;

% quadcopters parameters
ModelParam_rotor_x = 1.25;
ModelParam_rotor_y = 1.3;
ModelParam_rotor_R = sqrt(ModelParam_rotor_y^2+ModelParam_rotor_x^2)/2;
ModelParam_rotor_gamma = atan(ModelParam_rotor_y/ModelParam_rotor_x);

ModelParam_rotor_Kf = 15; % maximum capacity of the rotor (unit:kg)
ModelParam_rotor_Kt = 2.45; % rotor torque coefficient (Mz = Kt * Jzz)

%% state values
ModelInit_g = 9.80665; % gravity acceleration

ModelInit_PosX = -1.8522e-16;
ModelInit_PosY =  -1.9795e-14;
ModelInit_PosZ = -500;

% ModelInit_Velx = 28.7126; % 108km/h
% ModelInit_Vely =  -0.00021155;
% ModelInit_Velz = 0.57591;
ModelInit_Velx = 5; % 108km/h (start from 5m/s)
ModelInit_Vely =  0;
ModelInit_Velz = 0;

% ModelInit_phi = -0.00044706;
% ModelInit_theta = 0.020055;
% ModelInit_psi = -1.5987e-06;
ModelInit_phi = 0;
ModelInit_theta = 0;
ModelInit_psi = 0;

% ModelInit_trim_de = -1.3446;
% ModelInit_trim_da = -0.014168;
% ModelInit_trim_dr = 0.02176;
% ModelInit_trim_dT = 2.6071;
ModelInit_trim_de = 0;
ModelInit_trim_da = 0;
ModelInit_trim_dr = 0;
ModelInit_trim_dT = 0;

% quadcopters trim command input
ModelInit_trim_u = ModelParam_mass/(4*ModelParam_rotor_Kf);

ModelInit_PosE = [ModelInit_PosX, ModelInit_PosY, ModelInit_PosZ];  %Initial position
ModelInit_VelB = [ModelInit_Velx, ModelInit_Vely, ModelInit_Velz];  %Initial velocity
ModelInit_AngEuler = [ModelInit_phi, ModelInit_theta, ModelInit_psi];  %Initial Euler angle (deg)
ModelInit_RateB = [0, 0, 0];  %Initial angular velocity
