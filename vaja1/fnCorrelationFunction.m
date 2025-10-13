function z = fnCorrelationFunction(x, y)
%% Funkcija izracuna korelacijo med signaloma x in y
%% x - prvi vhodni signal
%% y - drugi vhodni signal
%% z - izhodna korelacija med signaloma x in y
N = length(x); % dolzina signala
if length(y) ~= N
    error('Signala morata biti enake dolzine');
end
results = zeros(1, N);
for i = 0:N-1
    sum = 0;
    for n = 1:N
        if (n + i) <= N
            sum = sum + x(n) * y(n + i);
        else
            sum = sum + x(n) * y(n + i - N);
        end
    end
    results(i + 1) = sum / N; % izracun korelacije
end
z = results; % izracun korelacije
end