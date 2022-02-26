function [p] = Stephenson(g, p0, Tol, N)
for i=1:N
    p1 = g(p0);
    p2 = g(p1);
    p = p0 - (((p1-p0).^2)./(p2-(2*p1)+p0));

    if abs(p-p0)<Tol
        disp(p)
        disp(i)
        return
    end
    p0=p;
end
end

