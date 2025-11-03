function fnPlotPolesAndZeros(n,p)
%% funkcija izri?e pole p in ni?le n prevajalne funkcije v z-prostoru
%% nicle in poli so podani kot 2D nizi:
%%      n(1,:) in p(1,:) - realen del nicel in polov
%%      n(2,:) in p(2,:) - imaginaren del nicel in polov


% fig=figure; 
hold on

%% izris z=exp(jw)
w=0:0.05:2*pi;zwreal=cos(w);zwimag=sin(w);
plot(zwreal,zwimag,'k')
    
N=size(n,2);M=size(p,2);

for i=1:N
    plot(n(1,i),n(2,i),'.r','MarkerSize',14)
end

for i=1:M
    plot(p(1,i),p(2,i),'xb','MarkerSize',6,'LineWidth',1.2)
end

xlabel('Re({\itz})'),ylabel('Im({\itz})')

end


