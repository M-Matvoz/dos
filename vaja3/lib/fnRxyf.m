function Rxy=fnRxyf(x,y)
    
    N=length(x);
    X=fft(x); 
    Y=fft(y); 
    RXY=conj(X).*Y;
    Rxy=ifft(RXY)/N;
    
end