function [X,A,phi,a] = fnDTFT3(x, omega)

x=x(:);
N=length(x);
n=0:N-1;

M=length(omega);
W=zeros(M,N);
W0=exp(-1i);

for k=1:M
    W(k,:)=W0.^(omega(k)*n);
end

%% matricen izracun koeficientov 
X=W*x;

A=abs(X);a=20*log10(A/max(A));
phi=fnArg(X);

% if risi
%     fig=figure;
%     subplot(2,1,1)
%     plot(omega,A);
%     xlabel('\it\Omega'),ylabel('{\itA} ({\it\Omega})')
%     axis([0 2*pi 0 1.1*max(max(A),1)]);ax=gca;
%     ax.XTick=[0,pi/2,pi,3*pi/2,2*pi];
%     ax.XTickLabel={'0','\it\pi/2','\it\pi','\it\pi/2','\it\pi'};
% 
%     subplot(2,1,2)
%     plot(omega,a);
%     xlabel('\it\Omega'),ylabel('{\ita} ({\it\Omega}) dB')
%     axis([0 2*pi 1.1*min(min(a),1) 1.1*max(max(a),1)]);ax=gca;
%     ax.XTick=[0,pi/2,pi,3*pi/2,2*pi];
%     ax.XTickLabel={'0','\it\pi/2','\it\pi','\it\pi/2','\it\pi'};
% end

