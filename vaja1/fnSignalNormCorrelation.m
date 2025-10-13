function z = fnSignalNormCorrelation(x, y)
%% Funkcija izracuna normalizirano korelacijo med signaloma x in y
%% x - prvi vhodni signal
%% y - drugi vhodni signal
%% z - izhodna normalizirana korelacija med signaloma x in y
N = length(x); % dolzina signala    
if length(y) ~= N
    error('Signala morata biti enake dolzine');
end

corr = fnSignalCorrelation(x, y); % izracun korelacije
x_pow = fnAverageSignalPower(x); % izracun povprecne moči signala x
y_pow = fnAverageSignalPower(y); % izracun povprecne moči signala y
z = corr / sqrt(x_pow * y_pow); % izracun normalizirane korelacije
end
