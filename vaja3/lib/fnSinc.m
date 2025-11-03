function y=fnSinc(x)
    y=sin(x)./x;
    y(find(x==0))=1;
end