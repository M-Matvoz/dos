function xr=fnInterpolateWithTriangle(x,I)

N=length(x);
t=(-I:I)/I;
L=I*(N+1);
xrdelni=zeros(N,L+1);n=(-I:L-I)/I;

for i=1:N
    xrdelni(i,(i-1)*I+1:(i+1)*I+1)=x(i)*(1-abs(t));
end

xr=sum(xrdelni);

fig=figure;
plot(n,xrdelni')
hold on
plot(n,xr,'m','LineWidth',1.2)
plot((0:N-1),x,'*b')
xlabel('n')
ylabel('x[n],x(t)')