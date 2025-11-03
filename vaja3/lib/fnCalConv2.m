function y=fnCalConv2(x,h,t)

i=find(t==0);K=length(x);
L=i-1;M=K-L-1;N=min(L,M);
hflip=zeros(K,1);
hflip(i)=h(i);

for j=1:N
    hflip(i+j)=h(i-j);
    hflip(i-j)=h(i+j);
end

y=zeros(K,1);
for i=1:K
    y(i)=x'*fnShift(hflip,-t(i));
end

% k=11;
% subplot(3,1,1)
% stem(t,x),xlabel('n'),ylabel('x')
% subplot(3,1,2)
% stem(t,fnShift(hflip,-t(k))),xlabel('n'),ylabel('h fl&shf'),legend(['shift= ',num2str(t(k))])
% subplot(3,1,3)
% % y4plot=zeros(1,K);y4plot(11)=y(11);
% stem(t(k),y(k),'m'),axis([-20 20 0 5])
% xlabel('n'),ylabel('y')


end