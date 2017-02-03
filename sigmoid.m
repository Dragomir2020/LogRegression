function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

[m,n] = size(z);
g = zeros(m,n);

for i=1:m
    for k=1:n
    g(i,k) = 1/(1+exp(-z(i,k)));
    end
end
% =============================================================
end
