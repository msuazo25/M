for i=1:1:5
st=PP_h(:,:,i);
cst=cumsum(st);
figure(i)
%%
subplot(221)
plot(1:72,datos(:,i),'-k','linewidth',3)
hold on 
plot(1:72,PP_h(:,:,i),'linewidth',2)
ylim([0 20]); xlim([0 72])
legend('OBS','BMJ/LIN','BMJ/THM','BMJ/WSM6','KF/LIN','KF/THM','KF/WSM6','G3D/LIN','G3D/THM','G3D/WSM6','BMJ/WSM3','KF/WSM3','G3D/WSM3','fontsize',8,'NumColumns',4,'location','best')
xlabel('Horas Transcurridas')
ylabel('Precipitación [mm]')
title('Precipitación Acumulada horaria')
grid minor 
set(gca,'fontsize',14,'linewidth',2)
min_st=min(st')
max_st=max(st')
mean_st=mean(st')
bnd = [mean_st - min_st ; max_st - mean_st];
%%
subplot(222)
boundedline(1:72, mean_st, bnd','linewidth',2);
hold on 
plot(1:72,datos(:,i),'-k','linewidth',3)
legend('simulaciones','media horaria','OBS')
xlabel('Horas Transcurridas')
ylabel('Precipitación [mm]')
ylim([0 20]); xlim([0 72])
title('Precipitación Acumulada horaria (media)')
set(gca,'fontsize',14,'linewidth',2)
grid minor 
%%
subplot(223)
plot(1:72,cm(:,i),'-k','linewidth',3)
hold on 
plot(1:72,cst,'linewidth',2)
ylim([0 125]); xlim([0 72])
legend('OBS','BMJ/LIN','BMJ/THM','BMJ/WSM6','KF/LIN','KF/THM','KF/WSM6','G3D/LIN','G3D/THM','G3D/WSM6','BMJ/WSM3','KF/WSM3','G3D/WSM3','fontsize',8,'NumColumns',4,'location','best')
xlabel('Horas Transcurridas')
ylabel('Precipitación [mm]')
title('Precipitación Acumulada ')
grid minor 
set(gca,'fontsize',14,'linewidth',2)
min_st=min(cst')
max_st=max(cst')
mean_st=mean(cst')
bnd = [mean_st - min_st ; max_st - mean_st];
%%
subplot(224)
boundedline(1:72, mean_st, bnd','linewidth',2);
hold on 
plot(1:72,cm(:,i),'-k','linewidth',3)
legend('simulaciones','media horaria','OBS')
xlabel('Horas Transcurridas')
ylabel('Precipitación [mm]')
ylim([0 125]); xlim([0 72])
title('Precipitación Acumulada  (media)')
set(gca,'fontsize',14,'linewidth',2)
grid minor 
sgtitle(titu{i},'fontsize',18) 
end