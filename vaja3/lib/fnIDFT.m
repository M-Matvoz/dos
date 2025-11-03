function x=fnIDFT(X)

%% definicija baznih vektorjev
X=X(:);
N=length(X);
n=0:N-1;
om0=2*pi/N;
W=zeros(N);
W0=exp(1i*om0);

for k=0:N-1
    W(k+1,:)=W0.^(k*n);
end

%% sinteza signala 
x=W*X;

end

