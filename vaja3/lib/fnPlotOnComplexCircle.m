function fnPlotOnComplexCircle(z)
%% funkcija izri?e pole p in ni?le n prevajalne funkcije v z-prostoru
%% nicle in poli so podani kot 2D nizi:
%%      n(1,:) in p(1,:) - realen del nicel in polov
%%      n(2,:) in p(2,:) - imaginaren del nicel in polov


fig=figure; hold on

%% izris z=exp(jw)
w=0:0.05:2*pi;zwreal=cos(w);zwimag=sin(w);
plot(zwreal,zwimag,'-.k')
 
N=length(z);

for i=1:2
    plot(z(1,i)*cos(z(2,i)),z(1,i)*sin(z(2,i)),'om','MarkerSize',8)
end

xlabel('real(z)'),ylabel('imag(z)')

end


