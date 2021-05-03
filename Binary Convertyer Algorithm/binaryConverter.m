function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
x=1;
n=base10;
i=1;
while x>0
    r=rem(n,2);
    x=(n-r)/2;
    if r==0
        k=0;
    else
        k=1;
    end
    binary(i)=k;
    n=x;
    i=i+1;
end
base2=binary(end:-1:1);
end
