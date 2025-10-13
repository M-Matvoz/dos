function y = fnSignalVariance(x)
%% Funkcija izracuna varianco signala x
%% x - vhodni signal
%% y - izhodna varianca signala
N = length(x); % dolzina signala
m = fnAverageSignalValue(x); % izracun povprecne vrednosti
y = sum((x - m).^2)/N; % izracun variance
end