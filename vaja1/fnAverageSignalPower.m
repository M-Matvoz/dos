function y = fnAverageSignalPower(x)
%% Funkcija izracuna povprecno moc signala x
%% x - vhodni signal
%% y - izhodna povprecna moc signala
N = length(x); % dolzina signala
y = sum(x.^2)/N; % izracun povprecne moči
end