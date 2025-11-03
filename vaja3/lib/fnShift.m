function xs=fnShift(x,k)
    if k==0
        xs=x;
    elseif k<0
        xs=[zeros(-k,1); x(1:end+k)];
    else
        xs=[x(k+1:end); zeros(k,1)];
    end
end