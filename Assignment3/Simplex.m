function [B] = Simplex(A)

[m,n] = size(A);

x1 = zeros(m,1);

min = 1234567890;

% flag = 0

%while(1)
    
    for i=1:n-1
        if min > A(1,i)
            min = A(1,i);
            idx = i;
        end
    end
    
    %index = idx;
    
    
    for i=1:m
        x1(i,1)= abs(A(i,n)/A(i,idx));
    
    end
%disp(x1)

    min1 = 1234567890;
    
    for i = 2:m
        if min1 > x1(i,1)
            min1 = x1(i,1);
            idx1 = i;
        end
    end
    key = A(idx1,idx);
   % disp(key);
   
   x2 = A(:,idx);
   
   for i=1:m
       for j=1:n
           if i==1
             %A(i,j) = A(i,j)*(-1);
                 A(i,j) = A(i,j) - (min*A(idx1,j)/key);
           elseif i==idx1
                A(i,j) = A(i,j)/key;
           else
               %m = A(i,idx)
               A(i,j) = A(i,j) - (x2(i,1)*A(idx1,j)/key);
           end
            
                
        
       end
   end
   
   B = A;
   
   
   %disp(B);
   %disp(x2);
           
    
    
    
    
    