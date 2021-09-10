
subplot(211)
b = bar(s1','FaceColor','flat');
for k = 1:12   
    b(k).CData = cmap(k,:);
end
ylim([0 3])
hold on 
%yline(1,'linewidth',3)
grid on;
ylabel('RMSE');
title('RMSE')
%legend('Carriel Sur', 'La Colonia', 'Las Puentes', 'Lebu', 'Human')

set(gca,'fontsize',18,'linewidth',2)
legend('BMJ-LIN','KF-LIN','G3D-LIN','BMJ-THM','KF-THM','G3D-THM','BMJ-WSM6','KF-WSM6','G3D-WSM6','BMJ-WSM3','KF-WSM3','G3D-WSM3','fontsize',9)%,'orientation','horizontal')

% text(1:length(Data),Year,num2str(Data'),'vert','bottom','horiz','center');
set(gca,'Position',[0.1 0.1 0.87 0.7],'xtick',[1:5],'xticklabel',{'Carriel Sur', 'La Colonia', 'Las Puentes', 'Lebu', 'Human'})
subplot(212)
b = bar(s2','FaceColor','flat');
for k = 1:12   
    b(k).CData = cmap(k,:);
end
ylim([0 3])
hold on 
%yline(1,'linewidth',3)
grid on;
ylabel('RMSE');
title('RMSE')
%legend('Carriel Sur', 'La Colonia', 'Las Puentes', 'Lebu', 'Human')

set(gca,'fontsize',18,'linewidth',2)
legend('BMJ-LIN','KF-LIN','G3D-LIN','BMJ-THM','KF-THM','G3D-THM','BMJ-WSM6','KF-WSM6','G3D-WSM6','BMJ-WSM3','KF-WSM3','G3D-WSM3','fontsize',9)%,'orientation','horizontal')

% text(1:length(Data),Year,num2str(Data'),'vert','bottom','horiz','center');
box off
set(gca,'Position',[0.1 0.1 0.87 0.7],'xtick',[1:5],'xticklabel',{'Carriel Sur', 'La Colonia', 'Las Puentes', 'Lebu', 'Human'})