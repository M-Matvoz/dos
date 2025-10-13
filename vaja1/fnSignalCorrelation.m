function z = fnSignalCorrelation(x, y)
%% Funkcija izracuna korelacijo med signaloma x in y
%% x - prvi vhodni signal
%% y - drugi vhodni signal
%% z - izhodna korelacija med signaloma x in y
N = length(x); % dolzina signala
if length(y) ~= N
    error('Signala morata biti enake dolzine');
end
z = sum(x .* y)/N; % izracun korelacije
end