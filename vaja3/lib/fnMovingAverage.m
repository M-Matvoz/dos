function y=fnMovingAverage(x,M)

x=x(:);
N=length(x);
y=zeros(size(x));
x=x/(M+1);

y(1)=x(1);
for i=2:M+1
    y(i)=y(i-1)+x(i);
end

for i=M+2:N
    y(i)=y(i-1)+x(i)-x(i-M-1);
end

% y=y/(M+1);
