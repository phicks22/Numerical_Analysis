function c = bisect(f, a, b, accuracy)
c=(a+b)./2;
N = 0;
while abs((b-a)/2)>accuracy
    if  f(c)*f(a)<0
        a=c;      
    else
        b=c;
    end
    c=(a+b)./(2);
    N = N+1;
end

