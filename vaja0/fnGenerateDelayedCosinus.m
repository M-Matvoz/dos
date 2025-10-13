function y = fnGenerateDelayedCosinus(N, delay)
%% Funkcija generira kosinusni signal z zamikom
%% N - dolzina signala
%% delay - zamik signala (st. vzorcev)
%% y - izhodni kosinusni signal z zamikom
if delay >= N
    error('Zamik ne sme biti vecji ali enak dolzini signala');
end
y = zeros(1, N); % inicializacija izhodnega signala
for n = 1:N
    y(n) = cos(2 * pi * (n - delay) / N); % generiranje kosinusnega signala z zamikom
end