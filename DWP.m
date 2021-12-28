%  
%  This function estimate the dew point from temperature and relative
%  humidity (in %). 
% 
%  The approximation was extracted from Lawrence, 2005
%
% by Manuel Suazo, msuazo2018@udec.cl
function TPR=DWP(t,hr)
% this approach is accurate to within about +/- 1ºC and HR>50%
TPR=T-((100-RH)/5)
end 
