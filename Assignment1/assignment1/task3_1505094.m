function task3_1505094(x,n)
i = 1;
a=zeros(i,n);
y = i:1:n;

while i<=n
    a(i) = ((log1505094(x,i+1) - log1505094(x,i))/log1505094(x,i+1)) *100;
    i = i+1;    
end
%plot(i,error,'b')
plot(y,a,'b')
grid on
    