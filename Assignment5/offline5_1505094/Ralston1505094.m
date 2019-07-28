function y4 = Ralston1505094(a,b, yin, h)


if ~ (b>a), error('upper limit must be greater than lower limit'), end

t = (a:h:b)'; 
n = length(t);

if t(n)<b
    t(n+1) = b;
    n = n+1;
    t(n)=b;
end

y4 = yin*ones(n,1); %preallocate y to improve efficiency

for i = 1:n-1 
    k1 = f(t(i),y4(i));
    k2 = f(t(i) + (3/4)*h, y4(i) + (3/4)*k1*h);
    y4(i+1) = y4(i) + (((1/3)*k1)+((2/3)*k2))*(t(i+1)-t(i));
end
y4
plot(t,y4)

function dydt = f(x,y)
dydt = -2*x.^3+12*x.^2-20*x+8.5;




