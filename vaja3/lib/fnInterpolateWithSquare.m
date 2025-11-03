function xr=fnInterpolateWithSquare(x,I)

N=length(x);

L=I*N;
xrdelni=zeros(N,L);n=(-I/2:L-I/2-1)/I;

for i=1:N
    xrdelni(i,(i-1)*I+1:i*I)=x(i)*ones(1,I);
end

xr=sum(xrdelni);

fig=figure;
plot(n,xrdelni')
hold on
plot(n,xr,'m','LineWidth',1.2)
plot((0:N-1),x,'*b')
xlabel('n')
ylabel('x[n],x(t)')