function xr=fnInterpolateWithSinc(x,I)

N=length(x);
Tvz=1;
L=I*(N+1);
xrdelni=zeros(N,L+1);n=(-I:L-I)/I;

for i=1:N
    t=(I-(i+1)*I:L-i*I)/I;
    phi=t*pi/Tvz;
    xrdelni(i,:)=x(i)*fnSinc(phi);
end

xr=sum(xrdelni);

fig=figure;
plot(n,xrdelni')
hold on
plot(n,xr,'m','LineWidth',1.2)
plot((0:N-1),x,'*b')
xlabel('n')
ylabel('x[n],x(t)')

end

function y=fnSinc(x)
    y=sin(x)./x;
    y(find(x==0))=1;
end
