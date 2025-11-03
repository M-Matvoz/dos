function [zw,zwreal,zwimag,w]=fnGetZW(wstep)
    w=0:wstep:2*pi;
    zwreal=cos(w);
    zwimag=sin(w);
    for k=1:length(zwimag)    
        zw=zwreal+1i*zwimag;
    end
end
