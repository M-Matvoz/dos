function y=fnHumRemover(om0, lambda, x)

%% testni signal
% x=1+cos(om0*(1:500));

b0=(1-2*lambda*cos(om0)+lambda^2)/(2-2*cos(om0));
b1=-2*cos(om0)*b0;
b2=b0;
a1=-2*lambda*cos(om0);
a2=lambda^2;

y(1)=b0*x(1);y(2)=b0*x(2)+b1*x(1)-a1*y(1);
for n=3:length(x)
    y(n)=b0*x(n)+b1*x(n-1)+b2*x(n-2)-a1*y(n-1)-a2*y(n-2);
end

% plot([x;y]')