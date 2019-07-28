function y = Euler1505094(a,b, yin, h)


if ~ (b>a), error('upper limit must be greater than lower limit'), end

t = (a:h:b)'; 
n = length(t);
%if necessary, add an additional value of t 
%so that range goes from t=ti to tf

if t(n)<b
    t(n+1) = b;
    n = n+1;
    t(n)=b;
end

y = yin*ones(n,1); 

for i = 1:n-1 
    y(i+1) = y(i) + f(t(i),y(i))*(t(i+1)-t(i));
end
y
plot(t,y)

function dydt = f(x,y)
dydt = -2*x.^3+12*x.^2-20*x+8.5;
