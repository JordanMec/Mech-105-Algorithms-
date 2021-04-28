function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
[m, n] = size(A);
P = eye(n);
U=A;
L = zeros (m, n);
if m ~= n 
    error ('check if square matrix has been input')
end
if nargin < 1
    error ('check if a matrix has been entered')
end
if m == n
    L(m, n) = 1;
end
for i = m+1:m
end
for j = 1:n
  [~, m] = max(abs(U(j:n, j)));     
  m = m+j-1;
  if m ~= j
    U([m,j],:) =  U([j,m], :);
    P([m,j],:) =  P([j,m], :);
    if j >= 2
      L([m,j],1:j-1) =  L([j,m], 1:j-1);
    end
  end
  for i = j+1:n      
    L(i, j) = U(i, j) / U(j, j);
    U(i, :) =  U(i, :) - L(i, j)*U(j, :);
  end
end