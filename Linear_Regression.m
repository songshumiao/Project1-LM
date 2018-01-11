clear all
clc
clear

%% ----------------------Prepare data------------------------------
x = 0:0.1:10;   % xÓÐ101¸öÖµ
mu = 0.0;
sigma = 3.0;
delta = normrnd(mu,sigma,size(x));
y = 3*x + 2 +delta;
plot(x,y,'+')
hold on
%% ---------------------Gradient descent---------------------------
k = 0.0;
b = 0.0;
iteration = 2000;
alpha = 0.0001;
iter_num = 0;
while iter_num <= iteration
    k = k + alpha*(sum((y - x*k -b) .* x));
    b = b + alpha*(sum(y - x*k -b));
    iter_num = iter_num + 1;
end
k
b

plot(x,k*x+b,'r')
