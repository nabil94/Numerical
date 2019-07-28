function y2 = Heun1505094(a,b, yin, h)


if ~ (b>a), error('upper limit must be greater than lower limit'), end

t = (a:h:b)'; 
n = length(t);


if t(n)<b
    t(n+1) = b;
    n = n+1;
    t(n)=b;
end

y2 = yin*ones(n,1); %preallocate y to improve efficiency

for i = 1:n-1 
    k1 = f(t(i),y2(i));
    k2 = f(t(i) + h, y2(i) + k1*h);
    y2(i+1) = y2(i) + 0.5*(k1+k2)*(t(i+1)-t(i));
end
y2
plot(t,y2)

function dydt = f(x,y)
dydt = -2*x.^3+12*x.^2-20*x+8.5;
