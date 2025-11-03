function fnPlotConv(x,y,t,conv)
    yinv=fnInvert(y);
    fig=figure;
    subplot(3,1,1)
    plot(t,x,'.b'), hold on, plot(t,y,'.g')
    legend('x','y')
    xlabel('n'),ylabel('vrednost')
    title('signala:')
    subplot(3,1,2)
    plot(t,x,'.b'), hold on, plot(t,yinv,'.g')
    legend('x','yinv')
    xlabel('n'),ylabel('vrednost')
    title('signala:')
    subplot(3,1,3)
    plot(t,conv,'.b')
    xlabel('n'),ylabel('vrednost')
    title('konvolucija:')
end