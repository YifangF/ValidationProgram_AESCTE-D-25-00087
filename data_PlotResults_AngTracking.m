clear % clear simulation variables
data_LoadSimVariables % program loading saved data from sim_output mat file

%% roll tracking comparison
f1 = figure(1);
set(f1,'Position',[100,100,450,400]);
% main figure
plot(RLASMC_t,RLASMC_phid,'LineWidth',1.5);
hold on
grid on
set(gca,'YTick',[-5:8]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',14);
plot(RLASMC_t,RLASMC_phi,'LineWidth',2);
hold on
plot(RLSMC_t,RLSMC_phi,'LineWidth',1.5,'LineStyle','-.');
hold on
plot(ASMC_t,ASMC_phi,'LineWidth',1.5,'LineStyle',':');

l = legend({'Desired Roll Angle','Roll Angle with PAFTC','Roll Angle with RLSMC','Roll Angle with NASMC'});
set(l,'fontsize',12);
set(l,'position',[0.615,0.2,0.2,0.1]);
xlabel({'Time (s)','(A)'});
ylabel('Roll angle (deg)');
xlim([0,55])
ylim([-6,8])

%% pitch tracking comparison
f2 = figure(2);
set(f2,'Position',[100,100,450,400]);

% main figure
plot(RLASMC_t,RLASMC_thetad,'LineWidth',1.5);
hold on
grid on
set(gca,'YTick',[-15:10]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',14);
plot(RLASMC_t,RLASMC_theta,'LineWidth',2);
hold on
plot(RLSMC_t,RLSMC_theta,'LineWidth',1.5,'LineStyle','-.');
hold on
plot(ASMC_t,ASMC_theta,'LineWidth',1.5,'LineStyle',':');


l = legend({'Desired Pitch Angle','Pitch Angle with PAFTC','Pitch Angle with RLSMC','Pitch Angle with NASMC'});
set(l,'fontsize',12);
set(l,'position',[0.62,0.2,0.18,0.07]);
xlabel({'Time (s)','(B)'});
ylabel('Pitch angle (deg)');
xlim([0,55])
ylim([-10,4])
%% yaw tracking comparison
f3 = figure(3);
set(f3,'Position',[100,100,450,400]);

% main figure
plot(RLASMC_t,RLASMC_psid,'LineWidth',1.5);
hold on
grid on
set(gca,'YTick',[-3:7]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',14);
plot(RLASMC_t,RLASMC_psi,'LineWidth',2);
hold on
plot(RLSMC_t,RLSMC_psi,'LineWidth',1.5,'LineStyle','-.');
hold on
plot(ASMC_t,ASMC_psi,'LineWidth',1.5,'LineStyle',':');

l = legend({'Desired Yaw Angle','Yaw Angle with PAFTC','Yaw Angle with RLSMC','Yaw Angle with NASMC'});
set(l,'fontsize',12);
set(l,'position',[0.63,0.2,0.18,0.07]);
xlabel({'Time (s)','(C)'});
ylabel('Yaw angle (deg)');
xlim([0,55])
ylim([-3,7])
%% Height Tracking
f4 = figure(4);
set(f4,'Position',[100,100,450,400]);

plot(RLASMC_t,RLASMC_zd,'LineWidth',1.5);
hold on
grid on
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',14);
plot(RLASMC_t,RLASMC_z,'LineWidth',2);
hold on
plot(RLSMC_t,RLSMC_z,'LineWidth',1.5,'LineStyle','-.');
hold on
plot(ASMC_t,ASMC_z,'LineWidth',1.5,'LineStyle',':');

l = legend({'Desired Height','Height with PAFTC','Height with RLSMC','Height with NASMC'});
set(l,'fontsize',12);
set(l,'position',[0.67,0.2,0.1,0.1]);
xlabel({'Time (s)','(D)'});
ylabel('Height (m)');
xlim([0,55])
ylim([498,504])
%% Forward Velocity Tracking
f5 = figure(5);
set(f5,'Position',[100,100,450,400]);
plot(RLASMC_t,RLASMC_ud,'LineWidth',1.5);
hold on
grid on
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',14);
plot(RLASMC_t,RLASMC_u,'LineWidth',2);
hold on
plot(RLSMC_t,RLSMC_u,'LineWidth',1.5,'LineStyle','-.');
hold on
plot(ASMC_t,ASMC_u,'LineWidth',1.5,'LineStyle',':');

l = legend({'Desired forward velocity','Forward velocity with PAFTC','Forward velocity with RLSMC','Forward velocity with NASMC'});
set(l,'fontsize',12);
set(l,'position',[0.595,0.2,0.15,0.1]);
xlabel({'Time (s)','(E)'});
ylabel('Forward velocity (m/s)');
xlim([0,55])
ylim([5,18])
%% Angle tracking error
f6 = figure(6);
set(f6,'Position',[100,100,1200,250]);

s1 = subplot(1,3,1);
set(s1,'position',[0.07,0.23,0.27,0.72]);
plot(RLASMC_t,RLASMC_phid-RLASMC_phi,'LineWidth',1.5);
hold on
grid on
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',13);
plot(RLSMC_t,RLSMC_phid-RLSMC_phi,'LineWidth',1.5,'LineStyle','-.');
plot(ASMC_t,ASMC_phid-ASMC_phi,'LineWidth',1.5,'LineStyle',':');
l = legend({'Roll error with PAFTC','Roll error with RLSMC','Roll error with NASMC'});
set(l,'fontsize',11);
set(l,'position',[0.09,0.27,0.1,0.1]);
xlabel({'Time (s)','(A)'});
ylabel('Roll angle tracking error (deg)');
xlim([0,55])
ylim([-6,6])

s2 = subplot(1,3,2);
set(s2,'position',[0.4,0.23,0.27,0.72]);
plot(RLASMC_t,RLASMC_thetad-RLASMC_theta,'LineWidth',1.5);
hold on
grid on
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',13);
plot(RLSMC_t,RLSMC_thetad-RLSMC_theta,'LineWidth',1.5,'LineStyle','-.');
hold on
plot(ASMC_t,ASMC_thetad-ASMC_theta,'LineWidth',1.5,'LineStyle',':');
l = legend({'Pitch error with PAFTC','Pitch error with RLSMC','Pitch error with NASMC'});
set(l,'fontsize',11);
set(l,'position',[0.42,0.27,0.1,0.1]);
xlabel({'Time (s)','(B)'});
ylabel('Pitch angle tracking error (deg)');
xlim([0,55])
ylim([-6,6])


s3 = subplot(1,3,3);
set(s3,'position',[0.72,0.23,0.27,0.72]);
plot(RLASMC_t,RLASMC_psid-RLASMC_psi,'LineWidth',1.5);
hold on
grid on
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',13);
plot(RLSMC_t,RLSMC_psid-RLSMC_psi,'LineWidth',1.5,'LineStyle','-.');
hold on
plot(ASMC_t,ASMC_psid-ASMC_psi,'LineWidth',1.5,'LineStyle',':');
l = legend({'Yaw error with PAFTC','Yaw error with RLSMC','Yaw error with NASMC'});
set(l,'fontsize',11);
set(l,'position',[0.74,0.27,0.1,0.1]);
xlabel({'Time (s)','(C)'});
ylabel('Yaw angle tracking error (deg)');
xlim([0,55])
ylim([-1.5,1.5])

%% angualr rate
f7 = figure(7);
set(f7,'Position',[100,100,1200,250]);

s1 = subplot(1,3,1);
set(s1,'position',[0.07,0.21,0.27,0.76]);
plot(RLASMC_t(1,2:27501),diff(ASMC_phi)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle','-.');
hold on
grid on
set(gca,'YTick',[-0.5:0.05:0.5]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',13);
plot(RLASMC_t(1,2:27501),diff(RLSMC_phi)./diff(RLASMC_t)/57.3,'LineWidth',2,'LineStyle',':');
plot(RLASMC_t(1,2:27501),diff(RLASMC_phi)./diff(RLASMC_t)/57.3,'LineWidth',1.5);
plot(RLASMC_t(1,2:27501),diff(RLASMC_phid)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle','--');
l = legend({'Roll rate with NASMC','Roll rate with RLSMC','Roll rate with PAFTC','Desired roll rate'});
set(l,'fontsize',11);
set(l,'position',[0.17,0.24,0.1,0.1],'numcolumns',2);
xlabel({'Time (s)','(A)'});
ylabel('Angular rate (rad/s)');
xlim([0,55])
ylim([-0.15,0.15])

s2 = subplot(1,3,2);
set(s2,'position',[0.4,0.21,0.27,0.76]);
plot(RLASMC_t(1,2:27501),diff(ASMC_theta)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle','-.');
hold on
grid on
set(gca,'YTick',[-0.5:0.05:0.5]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',13);
plot(RLASMC_t(1,2:27501),diff(RLSMC_theta)./diff(RLASMC_t)/57.3,'LineWidth',2,'LineStyle',':');
plot(RLASMC_t(1,2:27501),diff(RLASMC_theta)./diff(RLASMC_t)/57.3,'LineWidth',1.5);
plot(RLASMC_t(1,2:27501),diff(RLASMC_thetad)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle','--');
l = legend({'Pitch rate with NASMC','Pitch rate with RLSMC','Pitch rate with PAFTC','Desired pitch rate'});
set(l,'fontsize',11);
set(l,'position',[0.49,0.24,0.1,0.1],'numcolumns',2);
xlabel({'Time (s)','(B)'});
ylabel('Angular rate (rad/s)');
xlim([0,55])
ylim([-0.15,0.15])

s3 = subplot(1,3,3);
set(s3,'position',[0.72,0.21,0.27,0.76]);
plot(RLASMC_t(1,2:27501),diff(ASMC_psi)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle','-.');
hold on
grid on
set(gca,'YTick',[-0.5:0.05:0.5]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',13);
plot(RLASMC_t(1,2:27501),diff(RLSMC_psi)./diff(RLASMC_t)/57.3,'LineWidth',2,'LineStyle',':');
plot(RLASMC_t(1,2:27501),diff(RLASMC_psi)./diff(RLASMC_t)/57.3,'LineWidth',1.5);
plot(RLASMC_t(1,2:27501),diff(RLASMC_psid)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle','--');
l = legend({'Yaw rate with NASMC','Yaw rate with RLSMC','Yaw rate with PAFTC','Desired yaw rate'});
set(l,'fontsize',11);
set(l,'position',[0.81,0.24,0.1,0.1],'numcolumns',2);
xlabel({'Time (s)','(C)'});
ylabel('Angular rate (rad/s)');
xlim([0,55])
ylim([-0.15,0.15])

%% AngularRate tracking error
f8 = figure(8);
set(f8,'Position',[100,100,1200,250]);

s1 = subplot(1,3,1);
set(s1,'position',[0.07,0.23,0.27,0.72]);
plot(RLASMC_t(1,2:27501),diff(RLASMC_phid)./diff(RLASMC_t)/57.3 - diff(ASMC_phi)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle',':');
hold on
grid on
set(gca,'YTick',[-0.5:0.05:0.5]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',13);
plot(RLASMC_t(1,2:27501),diff(RLASMC_phid)./diff(RLASMC_t)/57.3 - diff(RLSMC_phi)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle','-.');
plot(RLASMC_t(1,2:27501),diff(RLASMC_phid)./diff(RLASMC_t)/57.3 - diff(RLASMC_phi)./diff(RLASMC_t)/57.3,'LineWidth',1.5);
l = legend({'Roll rate error with NASMC','Roll rate error with RLSMC','Roll rate error with PAFTC'});
set(l,'fontsize',11);
set(l,'position',[0.1,0.27,0.1,0.1]);
xlabel({'Time (s)','(D)'});
ylabel('Roll rate tracking error (rad/s)');
xlim([0,55])
ylim([-0.15,0.15])

s2 = subplot(1,3,2);
set(s2,'position',[0.4,0.23,0.27,0.72]);
plot(RLASMC_t(1,2:27501),diff(RLASMC_thetad)./diff(RLASMC_t)/57.3 - diff(ASMC_theta)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle',':');
hold on
grid on
set(gca,'YTick',[-0.5:0.05:0.5]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',13);
plot(RLASMC_t(1,2:27501),diff(RLASMC_thetad)./diff(RLASMC_t)/57.3 - diff(RLSMC_theta)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle','-.');
hold on
plot(RLASMC_t(1,2:27501),diff(RLASMC_thetad)./diff(RLASMC_t)/57.3 - diff(RLASMC_theta)./diff(RLASMC_t)/57.3,'LineWidth',1.5);
l = legend({'Pitch rate error with NASMC','Pitch rate error with RLSMC','Pitch rate error with PAFTC'});
set(l,'fontsize',11);
set(l,'position',[0.43,0.27,0.1,0.1]);
xlabel({'Time (s)','(E)'});
ylabel('Pitch rate tracking error (rad/s)');
xlim([0,55])
ylim([-0.15,0.15])


s3 = subplot(1,3,3);
set(s3,'position',[0.72,0.23,0.27,0.72]);
plot(RLASMC_t(1,2:27501),diff(RLASMC_psid)./diff(RLASMC_t)/57.3 - diff(ASMC_psi)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle',':');
hold on
grid on
set(gca,'YTick',[-0.5:0.05:0.5]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',13);
plot(RLASMC_t(1,2:27501),diff(RLASMC_psid)./diff(RLASMC_t)/57.3 - diff(RLSMC_psi)./diff(RLASMC_t)/57.3,'LineWidth',1.5,'LineStyle','-.');
hold on
plot(RLASMC_t(1,2:27501),diff(RLASMC_psid)./diff(RLASMC_t)/57.3 - diff(RLASMC_psi)./diff(RLASMC_t)/57.3,'LineWidth',1.5);
l = legend({'Yaw rate error with NASMC','Yaw rate error with RLSMC','Yaw rate error with PAFTC'});
set(l,'fontsize',11);
set(l,'position',[0.75,0.27,0.1,0.1]);
xlabel({'Time (s)','(F)'});
ylabel('Yaw rate tracking error (rad/s)');
xlim([0,55])
ylim([-0.1,0.1])
%% tracking rmse comparison
rmse_phi_RLASMC = rmse(RLASMC_phid,RLASMC_phi);
rmse_phi_RLSMC = rmse(RLSMC_phid,RLSMC_phi);
rmse_phi_ASMC = rmse(ASMC_phid,ASMC_phi);
rmse_phi_comp_RLSMC = 1-rmse_phi_RLASMC/rmse_phi_RLSMC;
rmse_phi_comp_ASMC = 1-rmse_phi_RLASMC/rmse_phi_ASMC;
rmse_theta_RLASMC = rmse(RLASMC_thetad,RLASMC_theta);
rmse_theta_RLSMC = rmse(RLSMC_thetad,RLSMC_theta);
rmse_theta_ASMC = rmse(ASMC_thetad,ASMC_theta);
rmse_theta_comp_RLSMC = 1-rmse_theta_RLASMC/rmse_theta_RLSMC;
rmse_theta_comp_ASMC = 1-rmse_theta_RLASMC/rmse_theta_ASMC;
rmse_psi_RLASMC = rmse(RLASMC_psid,RLASMC_psi);
rmse_psi_RLSMC = rmse(RLSMC_psid,RLSMC_psi);
rmse_psi_ASMC = rmse(ASMC_psid,ASMC_psi);
rmse_psi_comp_RLSMC = 1-rmse_psi_RLASMC/rmse_psi_RLSMC;
rmse_psi_comp_ASMC = 1-rmse_psi_RLASMC/rmse_psi_ASMC;