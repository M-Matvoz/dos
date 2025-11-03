function [X, Ax, PHIx] = fnFFT(x, bitplot)
%% Funkcija izracuna hitro Fourierovo transformacijo signala x
%% x - vhodni signal
%% bitplot - indikator za prikazovanje spektra (1 - prikazi, 0 - ne prikazi)
%% X - Fourierova transformacija signala x
%% Ax - amplitudni spekter
%% PHIx - fazni spekter
N = length(x);
X = fft(x); % izracun FFT
X = X/N; % normalizacija
Ax = abs(X); % amplitudni spekter
PHIx = angle(X); % fazni spekter

if bitplot == 1
    k = 0:N-1;
    figure;
    stem(k, Ax, '.');
    title('Amplitudni spekter', 'interpreter', 'latex', 'FontSize', 14);
    xlabel('$k$','interpreter','latex', 'FontSize', 14); % oznaka x-osi
    ylabel('$A_x[k]$','interpreter','latex', 'FontSize', 14); % oznaka y-osi
end
end