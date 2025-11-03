function fnAnimateRotatingComplexorRealImag(A,phi0,om,n)

fig=figure; set(fig,'Position',[250,150,2*350,2*350])
N=length(n);pauseSec=0.5;

for i=1:N
    pause(pauseSec)
    subplot(2,2,1),hold off
    %% izris kompleksne kroznice
    [zwreal,zwimag]=fnPlotComplexCircle(1,[0 0 0]);hold on
    [zwreal,zwimag]=fnPlotComplexCircle(A,[0 0 0.5]);
    %% izris dosedaj?njih polo?ajev rotirajocega kompleksorja
    fnPlotKompleksor(A,om*n(1:i-1)+phi0,[0.5 0.5 1])
    %% izris trenutnega polo?aja rotirajocega kompleksorja
    fnPlotKompleksor(A,om*n(i)+phi0,[0 0 0.5])
  
    subplot(2,2,2),hold off
    fnPlotSignalImag(A,om*n(1:i-1)+phi0,n(1:i-1),n(1),n(end),[0.5 0.5 1]), hold on
    fnPlotSignalImag(A,om*n(i)+phi0,n(i),n(1),n(end),[0 0 0.5])
    
    subplot(2,2,3),hold off
    fnPlotSignalReal(A,om*n(1:i-1)+phi0,n(1:i-1),n(1),n(end),[0.5 0.5 1]), hold on
    fnPlotSignalReal(A,om*n(i)+phi0,n(i),n(1),n(end),[0 0 0.5])
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
end

function fnPlotKompleksor(A,phi,color)
    for i=1:length(phi)
        plot(A*cos(phi(i)),A*sin(phi(i)),'.','MarkerSize',12,'Color',color), hold on
        plot(linspace(0,A*cos(phi(i))),linspace(0,A*sin(phi(i))),'Color',color)
    end
    title('Krozenje kompleksorja'),xlabel('real'),ylabel('imag')
end

function fnPlotSignalReal(A,phi,ntemp,nmin,nmax,color)
    plot(A*cos(phi),ntemp,'.','MarkerSize',12,'Color',color)
    axis([-A, A,nmin, nmax])
    title('Realni del signala'),xlabel('signal'),ylabel('n')
end

function fnPlotSignalImag(A,phi,ntemp,nmin,nmax,color)
    plot(ntemp,A*sin(phi),'.','MarkerSize',12,'Color',color)
    axis([nmin, nmax, -A, A])
    title('Imaginarni del signala'),xlabel('n'),ylabel('signal')
end


