function p = Fixed_Point(p0, g, Tol, N)
for i=1:N
    p = g(p0);
    if abs(p-p0)<Tol
        disp(p)
        return
    end
    p0 = p;
    
end

