function w=fnHannWindow(n)

a0=0.5;
a1=0.5;
N=length(n);

w=a0+a1*cos(2*pi*n/N);

