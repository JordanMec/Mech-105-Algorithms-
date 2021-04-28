function [I] = Simpson(x, y)

if length(x) ~= length(y)
    error('check that the inputs are the same length');
end

if diff(diff(x)) ~= 0
    error('check that the x input is equally spaced');
end

if rem(length(x), 2) ~= 0
    warning('The trapezoidal rule has been used on the last interval');
end

% end of error checking

[a, b] = size(x);
h = (b-a)/length(x);
odd = sum(y(2:2:length(x)-1));
even = sum(y(3:2:length(x)-2));
simps = (y(1) + 4*odd + 2*even + y(length(x)))*(h/3);
trap = trapz (y(b-1):b);

% this is where the number of spaces is EVEN just simpsons rule get used

if even
    a = 1;
    b = length(x);
    
    for k = 2:2:length(x)-1
        odd = sum(y(k));
    end
    
    for k = 3:2:length(x)-1
        even = sum(y(k));
    end
    
    simps = (y(1) + 4*odd + 2*even + y(length(x)));
    I = simps*(h/3);
    
    % this is where the number of spaces is ODD the sum of simpsons & trapz rules are
    % used
    
else
    a = 1
    b = length(x)-2

    for k = 3:2:length(x)-2
        even = sum(y(k));
    end
    
    for k = 2:2:length(x)-2
        odd = sum(y(k));
    end
    simps = (y(1) + 4*odd + 2*even + y(length(x)-2));
    trap = trapz (y(b-1):b);
    I = simps*(h/3) + trap;
    warning('The trapezoidal rule has been used on the last interval');
end

end
