function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

for i = 1:m
    J = J + ((-y(i)*log(sigmoid(X(i,:)*theta(:,1)))) - ((1-y(i))*log(1-sigmoid(X(i,:)*theta(:,1)))));
    %fprintf('J= %0.2f',J);
end
J = (J/m);

%Regularization Cost
regSum = 0;
for i = 2:3
    regSum = regSum + theta(i)*theta(i);
end
regSum = (regSum*lambda)/(2*m);
J = J + regSum;

%gradient decent
sum1 = 0;
sum2 = 0;
sum3 = 0;
for i = 1:m
   sum1 = sum1 + (sigmoid(X(i,:)*theta(:,1))-y(i))*X(i,1);
   sum2 = sum2 + (sigmoid(X(i,:)*theta(:,1))-y(i))*X(i,2);
   sum3 = sum3 + (sigmoid(X(i,:)*theta(:,1))-y(i))*X(i,3);
end
sum1 = sum1/m;
sum2 = sum2/m;
sum3 = sum3/m;
%No reg for theta0
sum2 = sum2 + (lambda/m)*theta(2);
sum3 = sum3 + (lambda/m)*theta(3);
grad(1) = sum1;
grad(2) = sum2;
grad(3) = sum3;
%Update parameters
theta(1) = grad(1);
theta(2) = grad(2);
theta(3) = grad(3);
% =============================================================

end
