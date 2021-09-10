%% TEMPERATURA.

clear T2

for i=1:12

[T2(:,i,1),lo(1),la(1)]=seriedetiempo_wrfout2(fn{i},lon_e(1),lat_e(1))
[T2(:,i,2),lo(2),la(2)]=seriedetiempo_wrfout2(fn{i},lon_e(2),lat_e(2))
[T2(:,i,3),lo(3),la(3)]=seriedetiempo_wrfout2(fn{i},lon_e(3),lat_e(3))
[T2(:,i,4),lo(4),la(4)]=seriedetiempo_wrfout2(fn{i},lon_e(4),lat_e(4))
[T2(:,i,5),lo(5),la(5)]=seriedetiempo_wrfout2(fn{i},lon_e(5),lat_e(5))



end



T2(1:24,:,:)=[]
T2(end,:,:)=[]

clear j 
for j=1:5
      figure(j)
       plot(1:72,T2(:,:,j),'linewidth',2)
      set(gca,'linewidth',2)
      ylim([0 14])
      xlim([0 72])
     grid minor 
end 

%% LLUVIA
clear i
for i=1:12

[PP(:,i,1),PP_h(:,i,1),lo(1),la(1)]=seriedetiempo_wrf_lluvia(fn{i},lon_e(1),lat_e(1))
[PP(:,i,2),PP_h(:,i,2),lo(2),la(2)]=seriedetiempo_wrf_lluvia(fn{i},lon_e(2),lat_e(2))
[PP(:,i,3),PP_h(:,i,3),lo(3),la(3)]=seriedetiempo_wrf_lluvia(fn{i},lon_e(3),lat_e(3))
[PP(:,i,4),PP_h(:,i,4),lo(4),la(4)]=seriedetiempo_wrf_lluvia(fn{i},lon_e(4),lat_e(4))
[PP(:,i,5),PP_h(:,i,5),lo(5),la(5)]=seriedetiempo_wrf_lluvia(fn{i},lon_e(5),lat_e(5))



end
clear j 
for j=1:5
      figure(j)
      subplot(211)
       plot(1:72,PP(:,:,j),'linewidth',2)
       hold on 
       plot(1:72,cumsum(datos(:,j)),'k','linewidth',4)
      set(gca,'linewidth',2)
      ylim([0 90])
      xlim([0 72])
     grid minor 


       subplot(212)
       plot(1:72,datos(:,j),'k','linewidth',4)
       hold on 
       plot(1:72,PP_h(:,:,j),'linewidth',2)

      set(gca,'linewidth',2)
      ylim([0 13])
      xlim([0 72])
     grid minor 

end 
H=PP_h
H(:,13,:)=datos
f=find(H==0)
H(f)=NaN
H(find(H>0))=1
P=PP
clear j 
for j=1:5
      figure(1)
      subplot(5,1,j)
      pcolor(H(:,:,j)'])
      %shading flat
      colormap('jet')
      caxis([0 1])
      colorbar
      figure(2)
      subplot(5,1,j)
      pcolor(PP(:,:,j)')
      %shading flat
      colormap('jet')
end