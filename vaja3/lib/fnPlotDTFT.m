function fnPlotDTFT(x,omega,AX,phiX)

N = length(x); n = 0:N-1;

figure;
subplot(nargin-1,1,1)
stem(n,x,'.k', 'MarkerSize', 8, 'LineWidth', 0.6)
xlabel('$n$','Interpreter','Latex')
ylabel('$x[n]$','Interpreter','Latex')

subplot(nargin-1,1,2)
plot(omega,AX,'k','LineWidth', 0.6)
xlabel('$\Omega$','Interpreter','Latex')
ylabel('$A_x(\Omega)$','Interpreter','Latex')

if nargin==4
    subplot(nargin-1,1,3)
    plot(omega,phiX,'k', 'LineWidth', 0.6)
    xlabel('$\Omega$','Interpreter','Latex')
    ylabel('$\varphi_x(\Omega)$','Interpreter','Latex')
end
