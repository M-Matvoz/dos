function phi=fnArg(c)
    C=round(c*1000000)/1000000;
    phi=atan2(imag(C),real(C));
    k=find(real(C)==0&imag(C)==0);
    phi(k)=0;
end