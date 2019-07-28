function [y] = newton_1505094(xin,es,maxIt)
syms x;
func = @(x) 3*x.^2 - x.^3;
func1 = @(x) 6*x - 3*x.^2;
func2 = @(x) 6 - 6*x;
%xold = xin;

for i = 1 : maxIt
        %xtemp = xold;
        y1 = func1(xin);
        y2 = func2(xin);
        xresult = xin - (y1/y2);

        ea = abs((xin - xresult)/xresult)*100;
        if ea <= es
            break;
        else
            xin = xresult;
        end
end

y = func(xresult);
end