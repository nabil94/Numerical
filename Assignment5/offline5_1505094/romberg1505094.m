function romberg1505094( a,b,power,es )
%ROMBERG1505094 Summary of this function goes here
%   Detailed explanation goes here
s = sqrt(power) + 1;
q = zeros(s,s);
n = 1;
q(1,1) = trapez(n,a,b);
iter = 0;
true = 2.498091544796509;

while(1)
   iter = iter + 1;
   n = 2.^iter;
   q(iter+1,1) = trapez(n,a,b);
   
   for k = 2:iter+1
       j = 2+iter-k;
       q(j,k) = 4.^(k-1) * (q(j+1,k-1)-q(j,k-1)) / ((4.^k-1)-1);
   end
   ea = abs((q(1,iter + 1) - true)/true)*100;
   if ea <= es | iter >= s
       break;
   end
          
end
disp(q);
fprintf('ans is %f\n',q(s+1,1));

end

