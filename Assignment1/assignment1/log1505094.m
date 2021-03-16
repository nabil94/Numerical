function y = log1505094(x,n)

i = 1;
%t = log(x);
sum = 0;


while(1)
    if i>n, break,end
    sum = sum+(((-1).^(i+1))*((x-1).^i)./i);
%    error = (t-s)/t*100;
%    fprintf('%3d %14.10f %14.10f %12.8f\n',i,t,s,error);
    i = i+1;
end
y = sum;
fprintf('ans is %3d',y);
