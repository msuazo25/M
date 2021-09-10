clear all
addpath(genpath('C:\Users\manus\Desktop\t3 mona'))
addpath(genpath('C:\Users\manus\Desktop\UdeC 2021-1\MONA\mapas'))
addpath(genpath('C:\Users\manus\Desktop\UdeC 2021-1\MONA\tarea1\MONA\figuras\topo'))
addpath(genpath('C::\Users\manus\Desktop\utilidades\matlab'))
[horaria1,s1,suma(:,1),lon,lat]=lluvia('s1_d1')
[horaria2,s2,suma(:,2)]=lluvia('s2_d1')
[horaria3,s3,suma(:,3)]=lluvia('s3_d1')
[horaria4,s4,suma(:,4)]=lluvia('s4_d1')
[horaria5,s5,suma(:,5)]=lluvia('s5_d1')
[horaria6,s6,suma(:,6)]=lluvia('s6_d1')
[horaria7,s7,suma(:,7)]=lluvia('s7_d1')
[horaria8,s8,suma(:,8)]=lluvia('s8_d1')
[horaria9,s9,suma(:,9)]=lluvia('s9_d1')
[horaria10,s10,suma(:,10)]=lluvia('s10_d1')
[horaria11,s11,suma(:,11)]=lluvia('s11_d1')
[horaria12,s12,suma(:,12)]=lluvia('s12_d1')
% 
sss(:,1)=squeeze(sum(sum(horaria1)))
sss(:,2)=squeeze(sum(sum(horaria2)))
sss(:,3)=squeeze(sum(sum(horaria3)))
sss(:,4)=squeeze(sum(sum(horaria4)))
sss(:,5)=squeeze(sum(sum(horaria5)))
sss(:,6)=squeeze(sum(sum(horaria6)))
sss(:,7)=squeeze(sum(sum(horaria7)))
sss(:,8)=squeeze(sum(sum(horaria8)))
sss(:,9)=squeeze(sum(sum(horaria9)))
sss(:,10)=squeeze(sum(sum(horaria10)))
sss(:,11)=squeeze(sum(sum(horaria11)))
sss(:,12)=squeeze(sum(sum(horaria12)))


  plot(sss(25:end,:),'--','linewidth',1); grid minor ; axis square
  hold on 

%%

