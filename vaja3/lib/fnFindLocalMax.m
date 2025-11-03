function maxLoc=fnFindLocalMax(a,trsh,korInt)

a=a(:);
l=length(a);
test=0;
aMax=trsh;
dummy=-1000;
maxLoc=[dummy];
aTest=[0];

for i=1:l   
    if a(i,1)>trsh
        test=1;
        if a(i,1)>aMax
            aMax=a(i,1);
            maxLocTemp=i;
        end
   elseif test==1
        test=0;        
       if maxLocTemp-maxLoc(end)>korInt
            aTest=[aTest aMax];
            maxLoc=[maxLoc maxLocTemp];
        elseif aMax>aTest(end)
%              korTest(end)=korelacijaMax;
%              segSwingov(end)=segUdarecTemp;           
        end        
        aMax=trsh;
        maxLocTemp=0;       
    end
end

if maxLoc(1)==dummy
    maxLoc=maxLoc(2:end);
    aTest=aTest(2:end);
end