function fnPlotPhiDTFT(phi,strColor,omM)

phi=phi(:);
n=fix(phi/2/pi);
phi=phi-n*2*pi;
n=fix(phi/pi);
phi=phi-n*2*pi;

N=length(phi);Nhalf=round(N/2);
w=-pi+2*pi/N:2*pi/N:pi;
Aflip=[fliplr(phi(Nhalf+2:end)); phi(1:Nhalf+1)];

if (nargin>1)
    plot(w,Aflip,strColor,'LineWidth',1.8)
else    
    plot(w,Aflip,'LineWidth',1.8)
end

xlabel('{\it\Omega}'), ylabel('{\it\Phi_H}({\it\Omega})')
axis([-pi pi -pi pi]);ax=gca;
ax.XTick=[-pi,-pi/2,0,pi/2,pi];
ax.XTickLabel={'-{\pi}','-{\pi}/2','0','{\pi}/2','{\pi}'};
ax.YTick=[-pi,-pi/2,0,pi/2,pi];
ax.YTickLabel={'-{\pi}','-{\pi}/2','0','{\pi}/2','{\pi}'};
    
if nargin==3
    line([-omM -omM],[0 1.1*max(max(phi),1)],'Color','k','LineStyle','-.');
    line([omM omM],[0 1.1*max(max(phi),1)],'Color','k','LineStyle','-.');
end
