function ycts=fnCyclicTimeShift(y,m)
    if m==0
        ycts=y;
    elseif m>0
        ycts=[y(m+1:end) y(1:m)];
    else
        ycts=[y(end+m+1:end) y(1:end+m)];
    end
%     if m==0
%         ycts=y;
%     else
% %         ycts=[y(m+1:end) y(1:m)];
%         ycts=[y(end-m+1:end) y(1:end-m)];
%     end

end