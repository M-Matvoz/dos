%% Racunanje DFT PPI
%% 4.1
A = 1;
N = 64;
M = 4;
x = [A*ones(M, 1); zeros(N-M, 1)];

[X, Ax, PHIx] = fnDFT(x, 0);
fnPlotDFT(X, Ax, PHIx);

%% 4.2
%%% 4.2.a
A = 1;
N = 64;
M = 2;
x = [A*ones(M, 1); zeros(N-M, 1)];

[X, Ax, PHIx] = fnDFT(x, 0);
fnPlotDFT(X, Ax, PHIx);

%%% 4.2.b
A = 1;
N = 64;
M = 10;
x = [A*ones(M, 1); zeros(N-M, 1)];

[X, Ax, PHIx] = fnDFT(x, 0);
fnPlotDFT(X, Ax, PHIx);

%%% 4.2.c
A = 1;
N = 64;
M = 32;
x = [A*ones(M, 1); zeros(N-M, 1)];

[X, Ax, PHIx] = fnDFT(x, 0);
fnPlotDFT(X, Ax, PHIx);

%%% 4.2.d
A = 1;
N = 64;
M = 48;
x = [A*ones(M, 1); zeros(N-M, 1)];
[X, Ax, PHIx] = fnDFT(x, 0);
fnPlotDFT(X, Ax, PHIx);

%% 4.3
%%% 4.3.a
A = 1;
N = 8;
M = 4;
x = [A*ones(M, 1); zeros(N-M, 1)];
[X, Ax, PHIx] = fnDFT(x, 0);
fnPlotDFT(X, Ax, PHIx);

%%% 4.3.b
A = 1;
N = 32;
M = 4;
x = [A*ones(M, 1); zeros(N-M, 1)];
[X, Ax, PHIx] = fnDFT(x, 0);
fnPlotDFT(X, Ax, PHIx);

%%% 4.3.c
A = 1;
N = 128;
M = 4;
x = [A*ones(M, 1); zeros(N-M, 1)];
[X, Ax, PHIx] = fnDFT(x, 0);
fnPlotDFT(X, Ax, PHIx);

%%% 4.3.d
A = 1;
N = 4096;
M = 4;
x = [A*ones(M, 1); zeros(N-M, 1)];
[X, Ax, PHIx] = fnDFT(x, 0);
fnPlotDFT(X, Ax, PHIx);

%% 4.4
A = 1;
N = 64;
M = 4;
x = [A*ones(M, 1); zeros(N-M, 1)];

[X, Ax, PHIx] = fnDFT(x, 0);
X_44 = fnIDFT(X);
figure;
n = 0:N-1;
stem(n, X_44, 'filled');
title('Obratna DFT');
xlabel('Vzorec n');
ylabel('X_{44}[n]');
figure;
stem(n, x, 'filled');
title('Original Signal');
xlabel('Vzorec n');
ylabel('x[n]');
