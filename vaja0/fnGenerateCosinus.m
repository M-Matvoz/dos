function y = fnGenerateCosinus(N)
%% Funkcija generira kosinusni signal
%% N - dolzina signala
%% y - izhodni kosinusni signal
y = zeros(1, N); % inicializacija izhodnega signala
for n = 1:N
    y(n) = cos(2 * pi * n / N); % generiranje kosinusnega signala
end