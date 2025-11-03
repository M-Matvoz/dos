function fnKrozenjeKompleksorjaRealImag(A,phi0,om,n,pauseSec)

fig=figure; set(fig,'Position',[250,150,2*350,2*350])
N=length(n);% pauseSec=1;
color0 = [0.5 0 0];
color1 = [0.5 0.5 1];
color2 = [0 0 0.5];

for i=1:N
    pause(pauseSec)
    subplot(2,2,1),hold off
    %% izris kompleksne kroznice
    fnPlotComplexCircle(1,[0 0 0]);hold on
    fnPlotComplexCircle(A,[0 0 0.5]);
    %% izris dosedajsnjih polozajev rotirajocega kompleksorja
    fnPlotKompleksor(A,om*n(1:i-1)+phi0,color1,0)
    %% izris trenutnega polozaja rotirajocega kompleksorja
    fnPlotKompleksor(A,om*n(i)+phi0,color2,1)
    %% izris prvega polozaja rotirajocega kompleksorja
    fnPlotKompleksor(A,om*n(1)+phi0,color0,0)
    title('$\tilde{x}\ [n]$','Interpreter','Latex')
  
    subplot(2,2,2),hold off
    fnPlotSignalImag(A,om*n(1:i-1)+phi0,n(1:i-1),n(1),n(end),color1), hold on
    fnPlotSignalImag(A,om*n(i)+phi0,n(i),n(1),n(end),color2)
    fnPlotSignalImag(A,om*n(1)+phi0,n(1),n(1),n(end),color0)
    
    subplot(2,2,3),hold off
    fnPlotSignalReal(A,om*n(1:i-1)+phi0,n(1:i-1),n(1),n(end),color1), hold on
    fnPlotSignalReal(A,om*n(i)+phi0,n(i),n(1),n(end),color2)
    fnPlotSignalReal(A,om*n(1)+phi0,n(1),n(1),n(end),color0)
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

function fnPlotSignalReal(A,phi,ntemp,nmin,nmax,color)
    plot(A*cos(phi),-ntemp,'.','MarkerSize',12,'Color',color)
    line([0 0], [-nmax nmin], 'Color' ,'k')
    for i=1:length(ntemp)
        line([0 A*cos(phi(i))], [-ntemp(i) -ntemp(i)], 'Color', color)
    end
    axis([-A, A, -nmax, nmin])
    yticklabels(abs(yticks))
    xlabel('$Re\{\tilde{x}\ [n]\}$','Interpreter','Latex'),ylabel('$n$','Interpreter','Latex')
end

function fnPlotSignalImag(A,phi,ntemp,nmin,nmax,color)
    stem(ntemp,A*sin(phi),'.','MarkerSize',12,'Color',color)
    axis([nmin, nmax, -A, A])
    xlabel('$n$','Interpreter','Latex'),ylabel('$Im\{\tilde{x}\ [n]\}$','Interpreter','Latex')
end


