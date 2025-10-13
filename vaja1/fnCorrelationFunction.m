function z = fnCorrelationFunction(x, y, m)
%% Funkcija izracuna korelacijo med signaloma x in y
%% x - prvi vhodni signal
%% y - drugi vhodni signal
%% m - zamik (lag) za izracun korelacije
%% z - izhodna korelacija med signaloma x in y
N = length(x); % dolzina signala
if length(y) ~= N
    error('Signala morata biti enake dolzine');
end
if abs(m) >= N
    error('Zamik ne sme biti vecji ali enak dolzini signala');
end
sum = 0;
for n = 1:N-1
    sum = sum + x(n) * y(n + m);
end
z = sum / N; % izracun korelacije
end