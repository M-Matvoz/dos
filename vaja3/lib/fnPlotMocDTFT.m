function [SdB, adB] = fnPlotMocDTFT(A)

[SdB, adB] = fnMocVDb(A);

omega = linspace(-pi,pi,length(A));

figure; plot(omega,SdB);hold on;plot(omega,adB);
xlabel('Omega'),ylabel('[dB]'),legend('S(Omega)', 'a(omega)')
axis([-pi pi 1.1*min([min(adB(2:end)),1,min(SdB(2:end))]) 1.1*max([max(adB(2:end)),1,max(SdB(2:end))])]);ax=gca;
ax.XTick=[-pi,-pi/2,0,pi/2,pi];
ax.XTickLabel={'-pi','-pi/2','0','pi/2','pi'};


end

