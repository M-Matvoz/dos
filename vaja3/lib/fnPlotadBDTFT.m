function fnPlotadBDTFT(A,strColor)

A=20*log10(A(:)/max(A(:)));
N=length(A);Nhalf=round(N/2);
w=-pi+2*pi/N:2*pi/N:pi;
Aflip=[fliplr(A(Nhalf+2:end)); A(1:Nhalf+1)];

plot(w,Aflip,strColor,'LineWidth',1.8)
xlabel('{\it\Omega}'), ylabel('{\ita_H}({\it\Omega})[dB]')
axis([-pi pi min(A) 1.1*max(A)]);ax=gca;
ax.XTick=[-pi,-pi/2,0,pi/2,pi];
ax.XTickLabel={'-{\it\pi}','-{\it\pi}/2','0','{\it\pi}/2','{\it\pi}'};
    
