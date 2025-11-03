function y=fnLeakyIntegrator(x,lambda,Tmax)

% h=(1-lambda)*lambda.^(0:Tmax);
% y=conv(x,h,'valid');
% 
t=[-Tmax:length(x)-Tmax-1]';
h=zeros(size(x));
h(Tmax+1:2*Tmax+1)=(1-lambda)*lambda.^(0:Tmax);
y=fnCalConv2(x,h,t);


end