function [iters] = bisect_error(a, b, Tol)
iters = log((b-a)./Tol)/log(2);
disp(ceil(iters))
end

