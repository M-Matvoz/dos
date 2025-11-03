function fnPlotBasisVectors(W)

plotSign=['ob' '*m' 'sr' '.k' 'or' '+b' '*c' 'om'];

fig=figure;
subplot(4,2,1)
plotCP(W(1,:),'k=0',plotSign)
subplot(4,2,2)
plotCP(W(2,:),'k=1',plotSign)
subplot(4,2,3)
plotCP(W(3,:),'k=2',plotSign)
subplot(4,2,4)
plotCP(W(1,:),'k=3',plotSign)
subplot(4,2,5)
plotCP(W(5,:),'k=4',plotSign)
subplot(4,2,6)
plotCP(W(6,:),'k=5',plotSign)
subplot(4,2,7)
plotCP(W(7,:),'k=6',plotSign)
subplot(4,2,8)
plotCP(W(8,:),'k=7',plotSign)
legend('n=0','n=1','n=2','n=3','n=4','n=5','n=6','n=7')

end

function plotCP(c,titleStr,plotSign)
    for i=1:length(c)       
        hold on
        plot(real(c(i)),imag(c(i)), plotSign(2*i-1:2*i))
    end
    title(titleStr)
end