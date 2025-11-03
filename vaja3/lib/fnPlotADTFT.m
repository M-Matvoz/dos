function fnPlotADTFT(A,strColor,omM)

A=A(:);
N=length(A);Nhalf=round(N/2);
w=-pi+2*pi/N:2*pi/N:pi;
Aflip=[fliplr(A(Nhalf+2:end)); A(1:Nhalf+1)];

if (nargin>1)
    plot(w,Aflip,strColor,'LineWidth',1.8)
else    
    plot(w,Aflip,'LineWidth',1.8)
end
xlabel('{\it\Omega}'), ylabel('{\itA_H}({\it\Omega})')
axis([-pi pi 0 1.1*max(max(A),1)]);ax=gca;
ax.XTick=[-pi,-pi/2,0,pi/4,pi/2,pi];
ax.XTickLabel={'-{\it\pi}','-{\it\pi}/2','0','{\it\pi}/4','{\it\pi}/2','{\it\pi}'};
   
if nargin==3
    line([-omM -omM],[0 1.1*max(max(A),1)],'Color','k','LineStyle','-.');
    line([omM omM],[0 1.1*max(max(A),1)],'Color','k','LineStyle','-.');
end
