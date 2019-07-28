x = 0:0.1:4

y = @(x) -0.5*x.^4 + 4*x.^3 - 10*x.^2 + 8.5*x + 1

a = 0;
b = 4;
h = 0.5;
yin = 1;
m = a:h:b;
y1 = Euler1505094(a,b,yin,h);
y2 = Heun1505094(a,b,yin,h);
y3 = Midpoint1505094(a,b,yin,h);
y4 = Ralston1505094(a,b,yin,h);
hold on;

plot(x,y(x),'RED');
plot(m,y1,'BLUE',m,y1,'*');
plot(m,y2,'BLACK',m,y2,'*');
plot(m,y3,'GREEN',m,y3,'*');
plot(m,y4,'MAGENTA',m,y4,'*');

grid on;
hold off;

