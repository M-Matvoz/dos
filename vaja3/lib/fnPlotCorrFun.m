function fnPlotCorrFun(x,y,n,corrFun,normCorrFun)
    fig=figure;
    subplot(2,1,1)
    plot(n,x,'.b'), hold on, plot(n,y,'.g')
    axis([min(n),max(n),-0.2,1.2])
    legend('x','y')
    xlabel('n'),ylabel('vrednost')
    title('signala:')
    subplot(2,1,2)
    plot(n,corrFun,'.b'),hold on, 
    plot(n,normCorrFun,'.g')
    legend('korelacijska funkcija','normirana korelacijska funkcija')
    xlabel('n'),ylabel('vrednost')
    title('linearna podobnost:')
end