function R = fnKorelacijskaFunkcija(x,y)

x = x(:); y = y(:);
Nx = length(x);
Ny = length(y);
R = [];

if Nx==Ny
    %R = zeros(Nx,1); 
    ytemp = y;
    for m = 1:Nx
        Rtemp = 1/Nx*x'*ytemp;
        R = [R; Rtemp];
        ytemp = [ytemp(2:end); ytemp(1)];
    end   
else
    R = NaN;
end

end