clear % clear simulation variables
data_LoadSimVariables_s2 % program loading saved data from sim_output mat file
%% discontinuous gain
f5 = figure(5);
set(f5,'Position',[100,100,450,400]);
% main figure
plot(RLASMC_t,RLASMC_phi_k3,'LineWidth',1.5,'Color',[0.4941    0.1843    0.5569]);
hold on
grid on
set(gca,'YTick',[-0:0.1:0.7]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',14);
plot(RLASMC_t,RLASMC_theta_k3,'LineWidth',1.5,'LineStyle','--','Color',[0.9294    0.6941    0.1255]);
plot(RLASMC_t,RLASMC_psi_k3,'LineWidth',1.5,'LineStyle','-.','Color','#10763F');

l = legend({'\rho_{13}^{*}','\rho_{23}^{*}','\rho_{33}^{*}'});
set(l,'fontsize',12);
set(l,'position',[0.27,0.72,0.2,0.07]);
set(l,'orientation','horizontal')
xlabel({'Time (s)','(F)'});
ylabel('Discontinuous control gain \rho_{3k}^{*}');
xlim([0,55])
ylim([-0.1,0.7])
%% sliding variables & adp
f6 = figure(6);
set(f6,'Position',[100,100,750,350]);
s1 = subplot(2,2,1);
set(s1,'Position',[0.08,0.6,0.4,0.3]);
% main figure
plot(RLASMC_t,RLASMC_phi_adp1,'LineWidth',1.5,'LineStyle',':','MarkerIndices',1:5000:length(RLASMC_t),'Marker','o','MarkerSize',4)
hold on
grid on
set(gca,'YTick',[0:200:1200]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(RLASMC_t,RLASMC_phi_adp2,'LineWidth',1.3,'LineStyle','--','MarkerIndices',1:5000:length(RLASMC_t),'Marker','x','MarkerSize',6);
l1 = legend({'$\hat{\Upsilon}_1$','$\hat{\Gamma}_1$'},'Interpreter','latex');
set(l1,'position',[0.15,0.76,0.05,0.01],'orientation','horizontal')
xlabel({'Time (s)','(A)'})
ylabel({'Adaptive parameter','of roll motion'})
xlim([0,55])
ylim([-50,600])

s2 = subplot(2,2,2);
set(s2,'Position',[0.58,0.6,0.4,0.3]);
% main figure
plot(RLASMC_t,RLASMC_theta_adp1,'LineWidth',1.5,'LineStyle',':','MarkerIndices',1:5000:length(RLASMC_t),'Marker','o','MarkerSize',4)
hold on
grid on
set(gca,'YTick',[0:200:1000]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(RLASMC_t,RLASMC_theta_adp2,'LineWidth',1.3,'LineStyle','--','MarkerIndices',1:5000:length(RLASMC_t),'Marker','x','MarkerSize',6);
l2 = legend({'$\hat{\Upsilon}_2$','$\hat{\Gamma}_2$'},'Interpreter','latex');
set(l2,'position',[0.66,0.76,0.05,0.01],'orientation','horizontal')
xlabel({'Time (s)','(B)'})
ylabel({'Adaptive parameter','of pitch motion'})
xlim([0,55])
ylim([-50,600])

s3 = subplot(2,2,3);
set(s3,'Position',[0.08,0.14,0.4,0.3]);
% main figure
plot(RLASMC_t,RLASMC_psi_adp1,'LineWidth',1.5,'LineStyle',':','MarkerIndices',1:5000:length(RLASMC_t),'Marker','o','MarkerSize',4)
hold on
grid on
set(gca,'YTick',[0:60:240]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(RLASMC_t,RLASMC_psi_adp2,'LineWidth',1.3,'LineStyle','--','MarkerIndices',1:5000:length(RLASMC_t),'Marker','x','MarkerSize',6);
l3 = legend({'$\hat{\Upsilon}_3$','$\hat{\Gamma}_3$'},'Interpreter','latex');
set(l3,'position',[0.15,0.31,0.05,0.01],'orientation','horizontal')
xlabel({'Time (s)','(C)'})
ylabel({'Adaptive parameter','of yaw motion'})
xlim([0,55])
ylim([-20,240])

s4 = subplot(2,2,4);
set(s4,'Position',[0.58,0.14,0.4,0.3]);
% main figure
plot(RLASMC_t,RLASMC_sphi,'LineWidth',1.5,'LineStyle','-','Color','#55B7E6');
hold on
grid on
set(gca,'YTick',[-0.8:0.4:0.8]);
set(gca,'Box','off');
set(gca,'GridLineStyle','--');
set(gca,'LineWidth',0.9);
set(gca,'fontsize',10);
plot(RLASMC_t,RLASMC_stheta,'LineWidth',1.5,'LineStyle','--','Color','#1B7C3D');
plot(RLASMC_t,RLASMC_spsi,'LineWidth',1.3,'LineStyle','-.','Color','#ECB740');
l4 = legend({'$\sigma_1$','$\sigma_2$','$\sigma_3$'},'Interpreter','latex');
set(l4,'position',[0.7,0.17,0.05,0.01],'orientation','horizontal')
xlabel({'Time (s)','(D)'})
ylabel({'Sliding variable','of rotational motion'})
xlim([0,55])
ylim([-0.8,1])