function y = fnGenerateDelayedSinus(N, delay)
%% Funkcija generira sinusni signal z zamikom
%% N - dolzina signala
%% delay - zamik signala (st. vzorcev)
%% y - izhodni sinusni signal z zamikom
if delay >= N
    error('Zamik ne sme biti vecji ali enak dolzini signala');
end
y = zeros(1, N); % inicializacija izhodnega signala
for n = 1:N
    y(n) = sin(2 * pi * (n - 1 - delay) / N); % generiranje sinusnega signala z zamikom
end