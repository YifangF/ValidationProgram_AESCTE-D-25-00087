# ValidationProgram_AESCTE-D-25-00087
This repository contains validation programs of the manuscript submitted to 《Aerospace Science and Technology》 entitled **"Adaptive safety attitude control of a hybrid VTOL UAV under transition flight subject to multiple faults and uncertainties"**

The MATLAB & Simulink programs are provided in this repository to repoduce the tests results of the manuscript.

## Program Environment
MATLAB R2024a

## Deploy these Programs in Local Environment
1. Download the entire repository as a **ZIP** file and place all program files in a local MATLAB path.  
2. The repository provides script files for running the simulations. Simply executing the following command in the comand window to run all simulations.

``` 
transition_RunProgramScript
```

3. If you only want to run specific program files, we have also segmented these commands in the execution scripts for your convenience.

## Types of Files in the Repository
- **.m file:** The initialization files required to run the simulation, as well as the script files for processing the simulation results.
- **.slx file:** The simulation programs
- **.slxp file:** The encapsulated modules in the simulation program.
- **.mat file:** Data for VTOL UAV modeling.

## File Naming Annotations
1. Init files
- **model_init_param.m:** The modeling information of the VTOL UAV
- **model_aero_data_20240414.mat:** The aerodynamic data of the VTOL UAV

2. Simulation files
- **transition_PAFTC_2024aR1:** Simulation of Scenario 1 with PAFTC
- **transition_PAFTC_s2_2024aR1:** Simulation of Scenario 2 with PAFTC
- **transition_RLSMC_2024aR1:** Simulation of Scenario 1 with RLSMC
- **transition_RLSMC_s2_2024aR1:** Simulation of Scenario 2 with RLSMC
- **transition_AMSC_2024aR1:** Simulation of Scenario 1 with NASMC
- **transition_ASMC_s2_2024aR1:** Simulation of Scenario 2 with NASMC


3. Data processing files
- **data_LoadSimVariables:** Load simulation output data of 3 methods in Scenario 1
- **data_LoadSimVariables_s2:** Load simulation output data of 3 methods in Scenario 2
- **data_PlotResults_AngTracking (Fig.4~6)**: Plot the overall tracking performance and tracking errors with 3 methods in Scenario 1
- **data_PlotResults_AngTracking_s2 (Fig.9~11)**: Plot the overall tracking performance and tracking errors with 3 methods in Scenario 2
- **data_PlotResults_SMC_Variables (Fig.7)**: Plot the discontinuous control gains and adaptive parameters of PAFTC in Scenario 1
- **data_PlotResults_SMC_Variables_s2 (Fig.12)**: Plot the discontinuous control gains and adaptive parameters of PAFTC in Scenario 2
- **data_PlotResults_Actuators (Fig.8)**: Plot the control inputs with 3 methods in Scenario 1
- **data_PlotResults_Actuators_s2 (Fig.13)**: Plot the control inputs with 3 methods in Scenario 1
