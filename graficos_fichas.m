clear lluvias
lluvias(:,:,1)=s1(:,:,end)
lluvias(:,:,2)=s2(:,:,end)
lluvias(:,:,3)=s3(:,:,end)
lluvias(:,:,4)=s4(:,:,end)
lluvias(:,:,5)=s5(:,:,end)
lluvias(:,:,6)=s6(:,:,end)
lluvias(:,:,7)=s7(:,:,end)
lluvias(:,:,8)=s8(:,:,end)
lluvias(:,:,9)=s9(:,:,end)
lluvias(:,:,10)=s10(:,:,end)
lluvias(:,:,11)=s11(:,:,end)
lluvias(:,:,12)=s12(:,:,end)

p=find(lluvias<1);
lluvias(p)=NaN;
cmap=colormap_cpt('humidity.cpt',512)
for i=1:1:12
subplot(4,3,i)
pcolor(lonn,latt,lluvias(:,:,i)'); 
shading interp
borders('countries','k','center',180,'linewidth',1)
colormap(cmap)
caxis([1 150])
set(gca,'color',[1 1 1])
colorbar
end 