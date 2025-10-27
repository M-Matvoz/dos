%% Primer uporabe funkcije fnDFT

x = fnGenerateSinus(20);
%% Add 6 of these back to back to back
x = 3*[x, x, x, x, x, x];
[X, Ax, PHIx] = fnDFT(x);
figure;
subplot(3,1,1);
stem(0:length(x)-1, x, 'filled');
title('Kosinusni signal');
xlabel('n');
ylabel('x(n)');
subplot(3,1,2);
stem(0:length(X)-1, Ax, 'filled');
title('Amplitudni spekter');
xlabel('k');
ylabel('Ax(k)');
subplot(3,1,3);
stem(0:length(X)-1, PHIx, 'filled');
title('Fazni spekter');
xlabel('k');
ylabel('PHIx(k)');