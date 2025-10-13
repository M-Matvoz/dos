function z = fnAutocorrelationFunction(x)
%% Funkcija izracuna avtokorelacijo signala x
%% x - vhodni signal
%% z - izhodna avtokorelacija signala x
N = length(x); % dolzina signala
results = zeros(1, N);

for i = 0:N-1
    sum = 0;
    for n = 1:N-1
        if (n + i) <= N
            sum = sum + x(n) * x(n + i);
        else
            sum = sum + x(n) * x(n + i - N);
        end
    end
    results(i + 1) = sum / N; % izracun avtokorelacije
end

z = results; % izracun avtokorelacije
end