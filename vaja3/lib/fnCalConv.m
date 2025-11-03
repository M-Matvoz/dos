function conv=fnCalConv(x,y,Nperiod)
    %% funckija izracuna konvolucijo
    %% signalov x in y; 
    %% funkcija uposteva, da podana niza stevil x in y predstavljata eno celo
    %% periodo (Nx oziroma Ny)

    Nx=length(x); Ny=length(y);
    if Nx==Ny    %% ce periodi signalov nista enaki, funckija se zakljuci brez racunanja
        conv=zeros(Nx,1);    
        yinv=fnInvert(y);
        for i=0:(Nx-1)
            conv(i+1)=sum(x.*fnCyclicTimeShift(yinv,i))/Nperiod;        
        end        
    else
        disp('Signala morata imeti enako periodo')
    end

end


