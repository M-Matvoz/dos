function fnPlotDFT(x,AX,phiX)

N = length(x); n = 0:N-1; k = n;

figure;
subplot(nargin,1,1)
stem(n,x,'.k', 'MarkerSize', 8, 'LineWidth', 0.6)
xlabel('$n$','Interpreter','Latex')
ylabel('$x[n]$','Interpreter','Latex')

subplot(nargin,1,2)
stem(k,AX,'.k', 'MarkerSize', 8, 'LineWidth', 0.6)
xlabel('$k$','Interpreter','Latex')
ylabel('$A_x[k]$','Interpreter','Latex')

if nargin==3
    subplot(nargin,1,3)
    stem(k,phiX,'.k', 'MarkerSize', 8, 'LineWidth', 0.6)
    xlabel('$k$','Interpreter','Latex')
    ylabel('$\varphi_x[k]$','Interpreter','Latex')
end
