function fnPlotDiscrete(n,x,color)

n=n(:)';
x=x(:)';

plot(n,x,'o','Color',color)
hold on
line([n; n], [zeros(size(x)); x],'Color',color)

end