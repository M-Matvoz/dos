function [Az,Aw,Phiw]=fnCalcAz(n,p,z,zw,w,b0)

Az=fnCalculateAz(n,p,z,b0);
Aw=fnCalculateAz(n,p,zw,b0);
Phiw=fnCalculatePhiz(n,p,zw,b0);

end

function Az=fnCalculateAz(n,p,z,b0)
    Az=abs(b0);
    N=size(n,2);M=size(p,2);
    for j=1:N
        znj=(n(1,j)+1i*n(2,j));
        DNJ=abs(znj-z);        
        Az=Az.*DNJ;
    end
    for j=1:M
        zpj=(p(1,j)+1i*p(2,j));
        DPJ=abs(zpj-z); 
        Az=Az./DPJ;
    end
end

function Phiz=fnCalculatePhiz(n,p,z,b0)
    M=size(n,2);N=size(p,2);
    Phiz=(N-M)*fnArg(z);    
    for j=1:M
        znj=(n(1,j)+1i*n(2,j));
        Phiz=Phiz+fnArg(z-znj);
    end
    for j=1:N
        zpj=(p(1,j)+1i*p(2,j));
        Phiz=Phiz-fnArg(z-zpj);
    end
    if b0<0
        Phiz=Phiz+pi;  
    end
end
