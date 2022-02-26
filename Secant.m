function [p] = Secant(p0, p1, Tol, N, fx)
for i = 1:N
    fp1 = fx(p1);
    fp0 = fx(p0);
        if fp1 == fp0
            disp('Method Failed')
            return
        end
        
    p = p1 - ((fp1.*(p1-p0))./(fp1-fp0));
    
    if abs(p-p1)<Tol
        disp(p)
        return
    end
    p0 = p1;
    p1=p;
end  
end
