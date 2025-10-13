function z = fnAutocorrelationFuction(x, m)
%% Funkcija izracuna avtokorelacijo signala x
%% x - vhodni signal
%% m - zamik (lag) za izracun avtokorelacije
%% z - izhodna avtokorelacija signala x
N = length(x); % dolzina signala
if abs(m) >= N
    error('Zamik ne sme biti vecji ali enak dolzini signala');
end
sum = 0;
for n = 1:N-1
    sum = sum + x(n) * x(n + m);
end
z = sum / N; % izracun avtokorelacije
end