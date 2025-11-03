function [corrFun,normCorrFun]=fnCalCorrFunc(x,y,N)
    %% funckija izracuna korelacijsko (corrFun) in normirano korelacijsko (normCorrFun) funkcijo
    %% signalov x in y; 
   
    Nx=length(x); Ny=length(y);
    if Nx==Ny    %% ce dolzini signalov nista enaki, funckija se zakljuci brez racunanja
        corrFun=zeros(Nx,1);    
        for i=0:(Nx-1)            
            corrFun(i+1)=sum(x.*fnCyclicTimeShift(y,i))/N;        
        end

        %% izracun normirane korelacijske funckije
        mPx=fnCalMeanPower(x,N);
        mPy=fnCalMeanPower(y,N);
        normCorrFun=corrFun./sqrt(mPx*mPy);

    else
        disp('Signala morata imeti enako periodo')
    end

end


