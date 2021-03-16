function[root,its] = myBisect1505094(fx,xlower,xupper,error_approx,max_iter)

iter = 0;
flow = fx(xlower);
xmid = 0;

if fx(xupper)*fx(xlower)>0,
    disp('error');
end

while(iter<max_iter)
    xmidold = xmid;
    xmid = (xlower+xupper)/2;
    fr = fx(xmid);
    iter = iter+1;
    if xmid~=0, 
        ea = abs((xmid-xmidold)/xmid)*100;
    end
    
    if flow*fr<0,
        xupper = xmid;
    elseif flow*fr>0
        xlower = xmid;
        flow = fr;
    else
        ea = 0;
    end
    if ea<error_approx , break;end
end
root = xmid;
its = iter;
        