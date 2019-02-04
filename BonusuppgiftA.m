%xy+exp(x)+x-3=0
%xsin(x)+y^2-2=0

clear, clc
k=7;
x=linspace(-k,k,100000);
y=linspace(-k,k,100000);
f1 = @(x,y) x.*y+exp(x)+x-3;
f2 = @(x,y) x.*sin(x)+y.^2-2;
hold on
fimplicit(f1, [-k,k,-k,k])
fimplicit(f2, [-k,k,-k,k])
axis equal

x0 = [0.56, 1.305];
x1 = [1.12, -0.995];
x2 = [-3.57, -1.867];
x3 = [-6.289, -1.4];


fsolve(@ekvsys, x0)
fsolve(@ekvsys, x1)
fsolve(@ekvsys, x2)
fsolve(@ekvsys, x3)


function f = ekvsys(x)
f(1) = x(1).*x(2)+exp(x(1))+x(1)-3;
f(2) = x(1).*sin(x(1))+x(2).^2-2;
end