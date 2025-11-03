function xInv=fnInvert(x)

N=length(x);
xInv=zeros(1,N);
xInv(1)=x(1);
for i=2:length(x)
    xInv(i)=x(N-i+2);
end


end