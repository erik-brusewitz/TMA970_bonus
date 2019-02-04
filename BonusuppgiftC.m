%0<=y<=1-x^2 ->
%0<=1-x^2 -> x^2<=1 -> x\in{-1,1]

clear, clc
f = @(x,y) y.*sin(y+x.^2);
ymax = @(x) 1-x.^2;
integral2(f,-1,1,0,ymax)