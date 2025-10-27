function y = fnGenerateCompressedSinus(N, compressionFactor)
%% Funkcija generira sinusni signal s kompresijo
%% N - dolzina signala
%% compressionFactor - faktor kompresije (npr. 2 pomeni, da je frekvenca podvojena)
%% y - izhodni sinusni signal s kompresijo
y = zeros(1, N*compressionFactor); % inicializacija izhodnega signala
for n = 1:N
    y(n) = sin(2 * pi * (n-1) * compressionFactor / N); % generiranje sinusnega signala s kompresijo
end
end