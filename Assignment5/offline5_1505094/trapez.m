function t = trapez(n,a,b)

h = (b - a)/n;
x1 = a;
sum = f(x1);

for i = 1:n-1
    x1 = x1 + h;
    sum = sum + 2*f(x1);
end

sum  = sum + f(b);

t = (h*sum)/2;

%disp(t);

function y = f(x)
y = 1./(1 + x.^2);