function similarity=fnSlidingDTW(A,B)

la=length(A);
lb=length(B);
l=lb-la;
costDTW=zeros(1,l);

for i=1:l
    [P,D,C,T]=fnDTW(A,B(i:i+la-1,:));
    costDTW(i)=T(1)/la;
end
      
similarity=costDTW;


