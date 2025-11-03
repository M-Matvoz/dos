function fnSestevanjeDvehKompleksorjev(A1,phi01,om1,A2,phi02,om2,n,pauseSec)

fig=figure; set(fig,'Position',[250,150,2*350,2*350])
N=length(n);% pauseSec=1;
color1 = [0.5 0.5 1];
color2 = [0 0 0.5];
color3 = [1 0.5 0.5];
color4 = [0.5 0 0];

[A, phi] = fnSestejKompleksorja(A1,phi01,om1,A2,phi02,om2,n);

for i=1:N
    pause(pauseSec)
    subplot(2,2,1),hold off
    %% izris kompleksne kroznice
    fnPlotComplexCircle(1,[0 0 0]);hold on
    fnPlotComplexCircle(max(A),[0 0 0.5]);
    %% izris dosedajsnjih polozajev rotirajocega kompleksorja
    for j = 1:i-1
        fnPlotKompleksor(A1,om1*n(j)+phi01,color1,0)
        fnPlotKompleksor(A2,om2*n(j)+phi02,color1,0)
        fnPlotKompleksor(A(j),phi(j),color3,0)
    end   
    %% izris trenutnega polozaja rotirajocega kompleksorja
    fnPlotKompleksor(A1,om1*n(i)+phi01,color2,1)
    fnPlotKompleksor(A2,om2*n(i)+phi02,color2,1)
    fnPlotKompleksor(A(i),phi(i),color4,1)
    title('$\tilde{x}\ [n]$','Interpreter','Latex')
  
    subplot(2,2,2),hold off   
    for j = 1:i-1
        fnPlotSignalImag(A(j),phi(j),n(j),n(1),n(end),color3,max(abs(A))), hold on
    end
    fnPlotSignalImag(A(i),phi(i),n(i),n(1),n(end),color4,max(abs(A)))
    
    subplot(2,2,3),hold off
    for j = 1:i-1
        fnPlotSignalReal(A(j),phi(j),n(j),n(1),n(end),color3,max(abs(A))), hold on
    end
    fnPlotSignalReal(A(i),phi(i),n(i),n(1),n(end),color4,max(abs(A)))
end

end

function [zwreal,zwimag]=fnPlotComplexCircle(A,color,varargin)
    if nargin==2
        phi=0:0.05:2*pi;zwreal=A*cos(phi);zwimag=A*sin(phi);
    else
        zwreal=varargin{1};
        zwimag=varargin{2};
    end
    plot(zwreal,zwimag,'-.','Color',color)
    line([-A A],[0 0],'Color','k')
    line([0 0],[-A A],'Color','k')
end

function fnPlotKompleksor(A,phi,color,bitProjekcije)
    for i=1:length(phi)
        plot(A*cos(phi(i)),A*sin(phi(i)),'.','MarkerSize',12,'Color',color), hold on
%         plot(linspace(0,A*cos(phi(i))),linspace(0,A*sin(phi(i))),'Color',color)
        line([0,A*cos(phi(i))],[0,A*sin(phi(i))],'Color',color)
    end
    if bitProjekcije
        line([0 A*cos(phi(i))],[A*sin(phi(i)) A*sin(phi(i))],'Color','k','LineStyle','-.')
        line([A*cos(phi(i)) A*cos(phi(i))],[0 A*sin(phi(i))],'Color','k','LineStyle','-.')
    end
    xlabel('$real$','Interpreter','Latex'),ylabel('$imag$','Interpreter','Latex')
end

function fnPlotSignalReal(A,phi,ntemp,nmin,nmax,color,maxA)
    plot(A*cos(phi),-ntemp,'.','MarkerSize',12,'Color',color)
    line([0 0], [-nmax nmin], 'Color' ,'k')
    for i=1:length(ntemp)
        line([0 A*cos(phi(i))], [-ntemp(i) -ntemp(i)], 'Color', color)
    end
    axis([-maxA, maxA, -nmax, nmin])
%     n = nmax; i = 1;
%     while n >= nmin
%         yTickLabel{i} = num2str(n);
%         n = n-1; i = i+1;
%     end
%     yticklabels(yTickLabel)
    yticklabels(abs(yticks))
    xlabel('$Re\{\tilde{x}\ [n]\}$','Interpreter','Latex'),ylabel('$n$','Interpreter','Latex')
end

function fnPlotSignalImag(A,phi,ntemp,nmin,nmax,color,maxA)
    stem(ntemp,A.*sin(phi),'.','MarkerSize',12,'Color',color)
    axis([nmin, nmax, -maxA, maxA])
    xlabel('$n$','Interpreter','Latex'),ylabel('$Im\{\tilde{x}\ [n]\}$','Interpreter','Latex')
end

function [A, phi] = fnSestejKompleksorja(A1,phi01,om1,A2,phi02,om2,n)
    xSReal = A1*cos(om1*n+phi01)+A2*cos(om2*n+phi02);
    xSImag = A1*sin(om1*n+phi01)+A2*sin(om2*n+phi02);
    A = sqrt(xSReal.^2 + xSImag.^2);
    phi = atan2(xSImag,xSReal);
end

