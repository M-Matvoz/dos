function y = fnCompress(x, N)
%% Funkcija stisne signal x na dolzino N
%% x - vhodni signal
%% N - zelena dolzina izhodnega signala
L = length(x); % dolzina vhodnega signala
if N > L
    error('Zelena dolzina mora biti manjša ali enaka dolzini vhodnega signala');
end
step = floor(L / N); % korak vzorcenja
y = zeros(1, N); % inicializacija izhodnega signala
for i = 1:N
    y(i) = x((i-1)*step + 1);
end
end