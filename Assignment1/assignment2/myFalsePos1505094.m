function [root,its] = myFalsePos1505094(fx,x_lower,x_upper,error_rel,imax)

%fx = @(x) 1.25-((3.576516*x)./((x.^2+0.7225).^1.5));

iter = 0;
f_lower = fx(x_lower);
f_upper = fx(x_upper);
x_result = 0;
i_lower = 0;
i_upper = 0;

while(iter<imax)
    xrold = x_result;
    x_result = x_upper - f_upper*(x_lower-x_upper)/(f_lower-f_upper);
    f_result = fx(x_result);
    iter = iter+1;
     if x_result~=0, 
        error_approx = abs((x_result-xrold)/x_result)*100;
     end
     if sign(f_lower)==sign(f_result);
 %    if test < 0,
        x_lower = x_result;
        f_lower = fx(x_result);
        i_lower = 0;
        i_upper = i_upper + 1;
        if i_upper >= 2,
            f_upper = f_upper/2;
        end
     elseif sign(f_lower)~=sign(f_result)
        x_upper = x_result;
        f_upper = fx(x_result);
        i_upper = 0;
        i_lower = i_lower+1;
        if i_lower >= 2,
            f_lower = f_lower/2;
        end
     else 
         error_approx = 0;
     end
     if error_approx < error_rel, 
         break;
     end
end
root = x_result;
its = iter;