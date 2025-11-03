function fnAnimate2RotatingComplexors(A1,phi01,om,n,A2,phi02)

fig=figure; set(fig,'Position',[250,150,350,2*350+20])
N=length(n);pauseSec=0.5;
i=1;
%% izris kompleksne kroznice
phi=0:0.05:2*pi;zwreal=cos(phi);zwimag=sin(phi);
subplot(2,1,1)
plot(zwreal,zwimag,'-.k'),hold on
plot(A1*zwreal,A1*zwimag,'-.','Color',[0 0 0.7])
plot(A2*zwreal,A2*zwimag,'-.','Color',[0.7 0 0])
%% izris kompleksorja
plot(A1*cos(om*n(1)+phi01),A1*sin(om*n(1)+phi01),'.','MarkerSize',12,'Color',[0 0 0.5])
plot(A2*cos(om*n(1)+phi02),A2*sin(om*n(1)+phi02),'.','MarkerSize',12,'Color',[0.5 0 0])
plot(linspace(0,A1*cos(om*n(1)+phi01)),linspace(0,A1*sin(om*n(1)+phi01)),'Color',[0 0 0.5])
plot(linspace(0,A2*cos(om*n(1)+phi02)),linspace(0,A2*sin(om*n(1)+phi02)),'Color',[0 0 0.5])
title('Kroženje kompleksorja'),xlabel('real'),ylabel('imag')

subplot(2,1,2),
plot(A1*cos(om*n(1)+phi01),n(1),'.','MarkerSize',12,'Color',[0 0 0.5])
plot(A2*cos(om*n(1)+phi02),n(1),'.','MarkerSize',12,'Color',[0.5 0 0])
axis([-max(A1,A2), max(A1,A2),n(1), n(end)])
title('Signal v casovno diskretnem prostoru'),xlabel('signal'),ylabel('n')

for i=2:N
    pause(pauseSec)
    subplot(2,1,1),hold off
    %% izris kompleksne kroznice
    plot(zwreal,zwimag,'-.k'),hold on
    plot(A1*zwreal,A1*zwimag,'-.','Color',[0 0 0.7])
    plot(A2*zwreal,A2*zwimag,'-.','Color',[0.7 0 0])
    %% izris dosedajšnjih položajev rotirajocega kompleksorja
    for j=1:i-1
        plot(A1*cos(om*n(j)+phi01),A1*sin(om*n(j)+phi01),'.','MarkerSize',12,'Color',[0.5 0.5 1])
        plot(linspace(0,A1*cos(om*n(j)+phi01)),linspace(0,A1*sin(om*n(j)+phi01)),'Color',[0.5 0.5 1])
      
        plot(A2*cos(om*n(j)+phi02),A2*sin(om*n(j)+phi02),'.','MarkerSize',12,'Color',[1 0.5 0.5])
        plot(linspace(0,A2*cos(om*n(j)+phi02)),linspace(0,A2*sin(om*n(j)+phi02)),'Color',[1 0.5 0.5])
    end
    %% izris trenutnega položaja rotirajocega kompleksorja
    plot(A1*cos(om*n(i)+phi01),A1*sin(om*n(i)+phi01),'.','MarkerSize',12,'Color',[0 0 0.5])
    plot(linspace(0,A1*cos(om*n(i)+phi01)),linspace(0,A1*sin(om*n(i)+phi01)),'Color',[0 0 0.5])
    plot(A2*cos(om*n(i)+phi02),A2*sin(om*n(i)+phi02),'.','MarkerSize',12,'Color',[0.5 0 0])
    plot(linspace(0,A2*cos(om*n(i)+phi02)),linspace(0,A2*sin(om*n(i)+phi02)),'Color',[0.5 0 0])
    title('Kroženje kompleksorja'),xlabel('real'),ylabel('imag')
    
    subplot(2,1,2),hold off
    plot(A1*cos(om*n(1:i-1)+phi01),n(1:i-1),'.','MarkerSize',12,'Color',[0.5 0.5 1]), hold on, axis([-max(A1,A2), max(A1,A2),n(1), n(end)])
    plot(A1*cos(om*n(i)+phi01),n(i),'.','MarkerSize',12,'Color',[0 0 0.5])
    plot(A2*cos(om*n(1:i-1)+phi02),n(1:i-1),'.','MarkerSize',12,'Color',[1 0.5 0.5]), hold on, axis([-max(A1,A2), max(A1,A2),n(1), n(end)])
    plot(A2*cos(om*n(i)+phi02),n(i),'.','MarkerSize',12,'Color',[0.5 0 0])
    title('Signal v casovno diskretnem prostoru'),xlabel('signal'),ylabel('n')
end


