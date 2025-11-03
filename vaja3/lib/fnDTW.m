function [P,D,C,T]=fnDTW(X,Y)

% X and Y are input matrices of size lx*3 and ly*3
% P is the output path matrix n*2
% C is the cost matrix
% D is the acumulated cost matrix

lx=length(X);
ly=length(Y);

for i=1:lx
    for j=1:ly
        C(lx-i+1,j)=norm(X(i,:)-Y(j,:));
    end
end

% D(lx,ly)=C(lx,ly);
D(lx,1)=C(lx,1);
for i=(lx-1):(-1):1
    D(i,1)=D(i+1,1)+C(i,1);
end
for j=2:ly
    D(lx,j)=D(lx,j-1)+C(lx,j);
end
for i=(lx-1):(-1):1
    for j=2:ly
        D(i,j)=min([D(i+1,j-1),D(i+1,j),D(i,j-1)])+C(i,j);
    end
end

l=1;
m=1;
n=ly;
P(l,:)=[lx,ly];
while m<lx || n>1
    T(l)=D(m,n);
    l=l+1;
    if n==1
        m=m+1;
    elseif m==lx    
        n=n-1;
    elseif D(m+1,n-1)<=D(m+1,n) && D(m+1,n-1)<=D(m,n-1)
        n=n-1;
        m=m+1;
    elseif D(m+1,n)<D(m+1,n-1) && D(m+1,n)<D(m,n-1)
        m=m+1;
    else
        n=n-1;    
    end
    P(l,:)=[lx-m+1,n];    
end
