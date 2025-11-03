function fnPlotSpecter(x,A,phi)

n=[0:length(x)-1]';k=n;

fig=figure; 

subplot(3,1,1)
plot(n,x,'.b', 'MarkerSize', 20)
xlabel('n'),ylabel('x')

subplot(3,1,2)
plot(k,A,'.g', 'MarkerSize', 20)
xlabel('k'),ylabel('A')

subplot(3,1,3)
plot(k,phi,'.r', 'MarkerSize', 20)
xlabel('k'),ylabel('phi')
