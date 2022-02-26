function [p] = Newtons(p0, Tol, N, fx, fdx)
for i = 1:N
    p = p0 - (fx(p0)./fdx(p0));
    
    if abs(p-p0)<Tol
        disp(p)
        return
    end
    p0 = p;
end  
end

