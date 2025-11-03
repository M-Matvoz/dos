function fnPlotHz(n,p,zrange,zstep,wstep,b0)
%% funkcija izri?e vrednosti prevajalne funkcije H(z) v 3D kompleksnem prostoru
%% prevajalna funkcija H(z) je dolo?ena s poli p in ni?lami n:
%% nicle in poli so podani kot 2D nizi:
%%      n(1,:) in p(1,:) - realen del nicel in polov
%%      n(2,:) in p(2,:) - imaginaren del nicel in polov
%% zrange je 2D vektor, ki podaja obmo?ja z spremenljivke za ra?unanje
%% zstep je korak z spremenljivke za ra?unanje
%% wstep je korak kro?ne frekvence  za ra?unanje
%% bo je koeficient sita pri x[n]
%% Primer:
% % n=sqrt(2)/2*[-1 -1; 1 -1];
% % p=[-0.9 -0.9; 0 0];
% % zrange=[-1.5 1.5;-1.5 1.5];
% % zstep=0.01; wstep=0.01; b0=1;

addpath('lib')

[z,zreal,zimag]=fnGetZInRange(zrange,zstep);
[zw,zwreal,zwimag,w]=fnGetZW(wstep);

[Az,Aw,phiw]=fnCalcAz(n,p,z,zw,w,b0);
fig=figure;
h=surf(zreal,zimag,Az), colormap summer
hold on, 
plot3(zwreal,zwimag,Aw,'m','LineWidth',1.3),
axis([min(zwreal) max(zwreal) min(zwimag) max(zwimag) 0 10])

hold off
xlabel('Re({\itz})'),ylabel('Im({\itz})');zlabel('{\itA_H}({\itz})')

fig=figure;
subplot(2,1,1), hold on
fnPlotADTFT(Aw)
xlabel('{\it\Omega}'),ylabel('{\itA_H}({\it\Omega})')
axis([-pi pi 0 max(Aw)]);
subplot(2,1,2), hold on
AdB=20*log10(Aw(2:end)/max(Aw(2:end)));
% plot(w(2:end),AdB)
fnPlotADTFT(AdB)
xlabel('{\it\Omega}'),ylabel('{\ita_H}({\it\Omega}) dB')
axis([-pi pi min(AdB)*1.2 0]);

% subplot(3,1,3), hold on
% fnPlotPhiDTFT(phiw)



end

function [z,zreal,zimag]=fnGetZInRange(zrange,zstep)
    zreal=zrange(1,1):zstep:zrange(1,2);
    zimag=zrange(2,1):zstep:zrange(2,2);
    K=length(zimag);
    z=zeros(K,length(zreal));

    for k=1:K    
        z(k,:)=zreal+1i*zimag(k);
    end
end




