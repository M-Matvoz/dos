function [X,A,phi]=fnDFT(x)
%% izracun DFT

%% definicija baznih vektorjev
x=x(:);
N=length(x);
n=0:N-1;
om0=2*pi/N;
W=zeros(N,N);
W0=exp(-1i*om0);

for k=0:N-1
    W(k+1,:)=W0.^(k*n);
end
%W


%% matricen izracun koeficientov 
X=1/N*W*x;

%% izracun amplitudnega spektra
A=abs(X);

%% izracun faznega spektra
phi=fnArg(X);

end
