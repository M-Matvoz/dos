function [X, Ax, PHIx] = fnDFT(x, bitplot)
N = length(x);
OMEGA0 = 2 * pi / N;
W0 = exp(-1i * OMEGA0);
X = zeros(N, 1);
for k = 1:N
    for n = 1:N
        X(k) = X(k) + x(n) * W0^(k-1)^(n-1);
    end
end
Ax = abs(X)/N;
PHIx = atan2(imag(X), real(X));
for m = 1:N
    if Ax(m) < 1e-10
        PHIx(m) = 0;
    end
end
if bitplot == 1
    k = 0:N-1;
    figure;
    stem(k, Ax, '.');
    title('Amplitudni spekter', 'interpreter', 'latex', 'FontSize', 14);
    xlabel('$k$','interpreter','latex', 'FontSize', 14); % oznaka x-osi
    ylabel('$A_x[k]$','interpreter','latex', 'FontSize', 14); % oznaka y-osi
end
%% lahko uporabimo tudi funkcijo angle za določanje argumenta
% PHIx = angle(X);
end