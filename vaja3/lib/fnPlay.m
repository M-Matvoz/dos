function fnPlay(x,K,fs)

x=x(:)';
if nargin<=2
    fs=2^13; %% 8192
end
if isequal(nargin,1)
    K=1;
end

xplay=[];
for i=1:K
    xplay=[xplay x];
end

soundsc(xplay,fs)  