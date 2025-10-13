function y = fnAverageSignalValue(x)
%% Funkcija izracuna povprecno vrednost signala x
%% x - vhodni signal
%% y - izhodna povprecna vrednost signala
N = length(x); % dolzina signala
y = sum(x)/N; % izracun povprecne vrednosti
end