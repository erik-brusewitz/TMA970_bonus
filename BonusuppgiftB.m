clear, clc
k=5;
x=linspace(-k,k,100);
y=linspace(-k,k,100);
[X,Y]=meshgrid(x,y);
z = (sin(X+Y)+3*(X-Y/2).^2).*exp(-(X.^2+Y.^2));

subplot(1,2,1);
surf(x,y,z)
subplot(1,2,2);
contour(x,y,z,20)

%hitta minimipunkter
f = @(x) (sin(x(1)+x(2))+3*(x(1)-x(2)/2).^2).*exp(-(x(1).^2+x(2).^2));
[x,fval] = fminunc(f, [-0.5,0.5])

%hitta maximipunkter (ta negativa värdet av fval för att få z-värdet i
%punkten)
fminus = @(x) -(sin(x(1)+x(2))+3*(x(1)-x(2)/2).^2).*exp(-(x(1).^2+x(2).^2));
[x,fval] = fminunc(fminus, [-0.8,0.6])
[x,fval] = fminunc(fminus, [0.8,-0.35])