function [SdB, adB] = fnPlotMocDFT(A)

[SdB, adB] = fnMocVDb(A);

k = 0:length(A)-1;

figure; plot(k,SdB);hold on;plot(k,adB);
xlabel('k'),ylabel('[dB]'),legend('S(k)', 'a(k)')
axis([0 max(k) 1.1*min([min(adB(2:end)),1,min(SdB(2:end))]) 1.1*max([max(adB(2:end)),1,max(SdB(2:end))])]);ax=gca;


end

