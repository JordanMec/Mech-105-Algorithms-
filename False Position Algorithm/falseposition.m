function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
% input test
if nargin<3
    error('input needs more arguemnts');
elseif nargin<4
    es=0.0001;
elseif nargin<5
    maxit=200;
end
ea=100;
iter=0;
xrPrev=0;
while ea>es
    if iter<maxit
        xr=xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
        ea=(xr-xrPrev)/xr;
        if (func((xr)*xl))<0
            xl=xr;
        elseif(func(xr)*xu)<0
            xu=xr;
        else ea=0
        end
        itter=itter+1;
        if ea<=es||iter>=maxit
            break
        end
        root=xr
        fx=func(root)
    end
end
