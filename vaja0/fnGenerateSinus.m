function y = fnGenerateSinus(N)
%% Funkcija generira sinusni signal z dolzino N
%% T - perioda zveznega signala in jo merimo v [s]
%% N - perioda diskretnega signala in jo merimo v [vzorcev]
%% OMEGA - kotna frekvenca zveznega signala in jo merimo v [rad] (2*pi/N)
%% omega - kotna frekvenca diskretnega signala in jo merimo v [rad/sekundo] (2*pi*f)
n = 0:N-1; % diskretni casovni vektor, n = 1:N
% Za drugacen korak je sintaksa n = 0:korak:N-1;
y = sin(2*pi*n/N); % generiranje sinusnega signala

figure; % odpre novo okno za risanje
% plot(n, y); % risanje signala - zvezno
stem(n, y); % risanje signala z markerji - ni zvezno
xlabel('$n$','interpreter','latex', 'FontSize', 14); % oznaka x-osi
ylabel('$y[n]$','interpreter','latex', 'FontSize', 14); % oznaka y-osi
grid on; % vklop mreze
end