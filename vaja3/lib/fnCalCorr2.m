function corrxy=fnCalCorr2(x,y,t)

i=find(t==0);K=length(x);
L=i-1;M=K-L-1;N=min(L,M);

corrxy=zeros(K,1);
for i=1:K
    corrxy(i)=x'*fnShift(y,t(i));
end

end


