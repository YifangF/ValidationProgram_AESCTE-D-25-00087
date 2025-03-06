clear % clear simulation variables
data_LoadSimVariables % program loading saved data from sim_output mat file
%% control signals comparison (2x3)
f4 = figure(4);
set(f4,'Position',[100,100,1200,400]);

s1 = subplot(2,3,1);
set(s1,'position',[0.05,0.6,0.25,0.35]);
plot(RLASMC_t,RLASMC_u1,'LineWidth',1.5)
hold on
grid on
set(gca,'YTick',[0:0.2:1]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(RLASMC_t,RLASMC_u2,'LineWidth',1.5,'LineStyle','--');
plot(RLASMC_t,RLASMC_u3,'LineWidth',1.5,'LineStyle',':');
plot(RLASMC_t,RLASMC_u4,'LineWidth',1.5,'LineStyle','-.');
line([0,60],[1,1],'color','r','linewidth',1,'linestyle','--');
line([0,60],[0,0],'color','r','linewidth',1,'linestyle','--');
xlabel({'Time (s)','(A)'})
ylabel({'Rotors input with PAFTC'});
l1 = legend({'u1','u2','u3','u4'});
set(l1,'position',[0.23,0.65,0.05,0.01],'orientation','horizontal','numcolumns',2)
xlim([0,55])
ylim([-0.2,1.1])

s2 = subplot(2,3,4);
set(s2,'position',[0.05,0.13,0.25,0.35]);
plot(RLASMC_t,RLASMC_deup1,'LineWidth',1.5)
hold on
grid on
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(RLASMC_t,RLASMC_deup2,'LineWidth',1.5);
plot(RLASMC_t,RLASMC_dedown1,'LineWidth',1.5,'LineStyle',':');
plot(RLASMC_t,RLASMC_dedown2,'LineWidth',1.5,'LineStyle',':');
plot(RLASMC_t,RLASMC_da1,'LineWidth',1.5,'LineStyle','-.');
plot(RLASMC_t,RLASMC_da2,'LineWidth',1.5,'LineStyle','-.');
line([0,60],[25,25],'color','r','linewidth',1,'linestyle','--');
line([0,60],[-25,-25],'color','r','linewidth',1,'linestyle','--');
xlabel({'Time (s)','(B)'})
ylabel({'Control surfaces input','with PAFTC'});
l2 = legend({'\delta_{e,up1}','\delta_{e,up2}','\delta_{e,down1}','\delta_{e,down2}','\delta_{a1}','\delta_{a2}'},'FontSize',6.5);
set(l2,'position',[0.19,0.17,0.05,0.008],'orientation','horizontal','numcolumns',3)
xlim([0,55])
ylim([-48,30])

s3 = subplot(2,3,2);
set(s3,'position',[0.35,0.6,0.25,0.35]);
plot(RLSMC_t,RLSMC_u1,'LineWidth',1.5)
hold on
grid on
set(gca,'YTick',[0:0.2:1.2]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(RLSMC_t,RLSMC_u2,'LineWidth',1.5,'LineStyle','--');
plot(RLSMC_t,RLSMC_u3,'LineWidth',1.5,'LineStyle',':');
plot(RLSMC_t,RLSMC_u4,'LineWidth',1.5,'LineStyle','-.');
line([0,60],[1,1],'color','r','linewidth',1,'linestyle','--');
line([0,60],[0,0],'color','r','linewidth',1,'linestyle','--');
xlabel({'Time (s)','(C)'})
ylabel({'Rotors input with RLSMC'});
l1 = legend({'u1','u2','u3','u4'});
set(l1,'position',[0.53,0.65,0.05,0.01],'orientation','horizontal','numcolumns',2)
xlim([0,55])
ylim([-0.2,1.1])

s4 = subplot(2,3,5);
set(s4,'position',[0.35,0.13,0.25,0.35]);
plot(RLSMC_t,RLSMC_deup1,'LineWidth',1.5)
hold on
grid on
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(RLSMC_t,RLSMC_deup2,'LineWidth',1.5);
plot(RLSMC_t,RLSMC_dedown1,'LineWidth',1.5,'LineStyle',':');
plot(RLSMC_t,RLSMC_dedown2,'LineWidth',1.5,'LineStyle',':');
plot(RLSMC_t,RLSMC_da1,'LineWidth',1.5,'LineStyle','-.');
plot(RLSMC_t,RLSMC_da2,'LineWidth',1.5,'LineStyle','-.');
line([0,60],[25,25],'color','r','linewidth',1,'linestyle','--');
line([0,60],[-25,-25],'color','r','linewidth',1,'linestyle','--');
l2 = legend({'\delta_{e,up1}','\delta_{e,up2}','\delta_{e,down1}','\delta_{e,down2}','\delta_{a1}','\delta_{a2}'},'FontSize',6.5);
set(l2,'position',[0.49,0.17,0.05,0.008],'orientation','horizontal','numcolumns',3)
xlabel({'Time (s)','(D)'})
ylabel({'Control surfaces input','with RLSMC'});
xlim([0,55]) 
ylim([-48,30])

s5 = subplot(2,3,3);
set(s5,'position',[0.65,0.6,0.25,0.35]);
plot(ASMC_t,ASMC_u1,'LineWidth',1.5)
hold on
grid on
set(gca,'YTick',[0:0.2:1]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(ASMC_t,ASMC_u2,'LineWidth',1.5,'LineStyle','--');
plot(ASMC_t,ASMC_u3,'LineWidth',1.5,'LineStyle',':');
plot(ASMC_t,ASMC_u4,'LineWidth',1.5,'LineStyle','-.');
line([0,60],[1,1],'color','r','linewidth',1,'linestyle','--');
line([0,60],[0,0],'color','r','linewidth',1,'linestyle','--');
xlabel({'Time (s)','(E)'})
ylabel({'Rotors input with NASMC'});
l1 = legend({'u1','u2','u3','u4'});
set(l1,'position',[0.83,0.65,0.05,0.01],'orientation','horizontal','numcolumns',2)
xlim([0,55])
ylim([-0.2,1.1])

s6 = subplot(2,3,6);
set(s6,'position',[0.65,0.13,0.25,0.35]);
plot(ASMC_t,ASMC_deup1,'LineWidth',1.5)
hold on
grid on
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(ASMC_t,ASMC_deup2,'LineWidth',1.5);
plot(ASMC_t,ASMC_dedown1,'LineWidth',1.5,'LineStyle',':');
plot(ASMC_t,ASMC_dedown2,'LineWidth',1.5,'LineStyle',':');
plot(ASMC_t,ASMC_da1,'LineWidth',1.5,'LineStyle','-.');
plot(ASMC_t,ASMC_da2,'LineWidth',1.5,'LineStyle','-.');
line([0,60],[25,25],'color','r','linewidth',1,'linestyle','--');
line([0,60],[-25,-25],'color','r','linewidth',1,'linestyle','--');
l2 = legend({'\delta_{e,up1}','\delta_{e,up2}','\delta_{e,down1}','\delta_{e,down2}','\delta_{a1}','\delta_{a2}'},'FontSize',6.5);
set(l2,'position',[0.79,0.17,0.05,0.008],'orientation','horizontal','numcolumns',3)
xlabel({'Time (s)','(F)'})
ylabel({'Control surfaces input','with NASMC'});
xlim([0,55])
ylim([-48,30])
%% Toatal Control Effort
clc
dt = 0.002;
energy_RLASMC_Rotor = sum((RLASMC_u1.^2 + RLASMC_u2.^2 + RLASMC_u3.^2 + RLASMC_u4.^2)) * dt;
energy_RLASMC_ControlSurface = sum(((RLASMC_da1/25).^2 + (RLASMC_da2/25).^2 + (RLASMC_deup1/25).^2 + (RLASMC_deup2/250).^2 + (RLASMC_dedown1/25).^2 + (RLASMC_dedown2/250).^2)) * dt;
energy_RLASMC = energy_RLASMC_Rotor + energy_RLASMC_ControlSurface;
energy_RLSMC_Rotor = sum((RLSMC_u1.^2 + RLSMC_u2.^2 + RLSMC_u3.^2 + RLSMC_u4.^2)) * dt;
energy_RLSMC_ControlSurface = sum(((RLSMC_da1/25).^2 + (RLSMC_da2/25).^2 + (RLSMC_deup1/25).^2 + (RLSMC_deup2/25).^2 + (RLSMC_dedown1/25).^2 + (RLSMC_dedown2/25).^2)) * dt;
energy_RLSMC = energy_RLSMC_Rotor + energy_RLSMC_ControlSurface;
energy_ASMC_Rotor = sum((ASMC_u1.^2 + ASMC_u2.^2 + ASMC_u3.^2 + ASMC_u4.^2)) * dt;
energy_ASMC_ControlSurface = sum(((ASMC_da1/25).^2 + (ASMC_da2/25).^2 + (ASMC_deup1/25).^2 + (ASMC_deup2/25).^2 + (ASMC_dedown1/25).^2 + (ASMC_dedown2/25).^2)) * dt;
energy_ASMC = energy_ASMC_Rotor + energy_ASMC_ControlSurface;
%% Average rate of change
AverageRate_RLASMC = zeros(1,10);
AverageRate_RLASMC(1,1) = mean(abs(diff(RLASMC_u1) / dt));
AverageRate_RLASMC(1,2) = mean(abs(diff(RLASMC_u2) / dt));
AverageRate_RLASMC(1,3) = mean(abs(diff(RLASMC_u3) / dt));
AverageRate_RLASMC(1,4) = mean(abs(diff(RLASMC_u4) / dt));
AverageRate_RLASMC(1,5) = mean(abs(diff(RLASMC_da1/25) / dt));
AverageRate_RLASMC(1,6) = mean(abs(diff(RLASMC_da2/25) / dt));
AverageRate_RLASMC(1,7) = mean(abs(diff(RLASMC_deup1/25) / dt));
AverageRate_RLASMC(1,8) = mean(abs(diff(RLASMC_deup2/25) / dt));
AverageRate_RLASMC(1,9) = mean(abs(diff(RLASMC_dedown1/25) / dt));
AverageRate_RLASMC(1,10) = mean(abs(diff(RLASMC_dedown2/25) / dt));
Total_AverageRate_RLASMC = mean(AverageRate_RLASMC);
AverageRate_RLSMC = zeros(1,10);
AverageRate_RLSMC(1,1) = mean(abs(diff(RLSMC_u1) / dt));
AverageRate_RLSMC(1,2) = mean(abs(diff(RLSMC_u2) / dt));
AverageRate_RLSMC(1,3) = mean(abs(diff(RLSMC_u3) / dt));
AverageRate_RLSMC(1,4) = mean(abs(diff(RLSMC_u4) / dt));
AverageRate_RLSMC(1,5) = mean(abs(diff(RLSMC_da1/25) / dt));
AverageRate_RLSMC(1,6) = mean(abs(diff(RLSMC_da2/25) / dt));
AverageRate_RLSMC(1,7) = mean(abs(diff(RLSMC_deup1/25) / dt));
AverageRate_RLSMC(1,8) = mean(abs(diff(RLSMC_deup2/25) / dt));
AverageRate_RLSMC(1,9) = mean(abs(diff(RLSMC_dedown1/25) / dt));
AverageRate_RLSMC(1,10) = mean(abs(diff(RLSMC_dedown2/25) / dt));
Total_AverageRate_RLSMC = mean(AverageRate_RLSMC);
AverageRate_ASMC = zeros(1,10);
AverageRate_ASMC(1,1) = mean(abs(diff(ASMC_u1) / dt));
AverageRate_ASMC(1,2) = mean(abs(diff(ASMC_u2) / dt));
AverageRate_ASMC(1,3) = mean(abs(diff(ASMC_u3) / dt));
AverageRate_ASMC(1,4) = mean(abs(diff(ASMC_u4) / dt));
AverageRate_ASMC(1,5) = mean(abs(diff(ASMC_da1/25) / dt));
AverageRate_ASMC(1,6) = mean(abs(diff(ASMC_da2/25) / dt));
AverageRate_ASMC(1,7) = mean(abs(diff(ASMC_deup1/25) / dt));
AverageRate_ASMC(1,8) = mean(abs(diff(ASMC_deup2/25) / dt));
AverageRate_ASMC(1,9) = mean(abs(diff(ASMC_dedown1/25) / dt));
AverageRate_ASMC(1,10) = mean(abs(diff(ASMC_dedown2/25) / dt));
Total_AverageRate_ASMC = mean(AverageRate_ASMC);