function y = fnGenerateCompressedCosinus(N, compressionFactor)
%% Funkcija generira kosinusni signal s kompresijo
%% N - dolzina signala
%% compressionFactor - faktor kompresije (npr. 2 pomeni, da je frekvenca podvojena)
%% y - izhodni kosinusni signal s kompresijo
y = zeros(1, N*compressionFactor); % inicializacija izhodnega signala
for c = 0:compressionFactor-1
    for n = 1:N
        y(n + c*N) = cos(2 * pi * (n - 1) / N); % generiranje kosinusnega signala s kompresijo
    end
end
end