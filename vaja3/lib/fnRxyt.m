function Rxyt=fnRxyt(x,y)

x=x(:);y=y(:)';
N=length(x);
Y=zeros(N);
for i=1:N
    Y(:,i)=[y(i:end) y(1:i-1)];  
end

Rxyt=Y*x/N;