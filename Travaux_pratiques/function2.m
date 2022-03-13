function [f] = function2(x)
global lambda;
f = 1./sqrt(((1-x.^2).^2 + lambda.*x.^2));
end

