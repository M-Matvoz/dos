function [X, A, phi]=fnFFT(x)

X=fft(x)/length(x);
A=abs(X);
phi=fnArg(X);