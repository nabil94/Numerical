function LU_1505094(a,b)
ab=a;
[row,col] = size(ab);
[m,n] = size(b);

if row ~= col
    error('Operation cannot be possible');
    return;
end

if m ~= col
    error('Operation cannot be possible');
    return;
end

if det(a) == 0
    error('No Solution possible');
    return;
end

for i = 1 : row-1
    for j = 2 : row
        if(ab(i,i) == 0)
            temp = ab(1,:);
            ab(1,:) = ab(j,:);
            ab(j,:) = temp;
        end
    end
    for k = i+1:row
        ab(k,:) = ab(k,:) - (ab(i,:)*(ab(k,i)/ab(i,i)));
    end
end
U = ab;
disp(U);


%for i = row:-1:2
%    for k = i-1:-1:1
%        a(k,:) = a(k,:) - (a(i,:)*(a(k,i)/a(i,i)));
%    end
%end

%L = a;


%for i = 1 : col 
%    L(:,i) = L(:,i)/U(i,i);
%   L(:,i) = L(:,i)/L(i,i);
%end
%disp(L);
L = zeros(row,col);
for i=1:row
  % Finding L
  for k=1:i-1
  L(i,k)=a(i,k);
  for j=1:k-1
  L(i,k)= L(i,k)-L(i,j)*U(j,k);
  end
  L(i,k) = L(i,k)/U(k,k);
  end
end
for i=1:row
  L(i,i)=1;
end
disp(L); 
  


lb = [L b];

for i = 1 : row-1
    for j = 2 : row
        if(lb(i,i) == 0)
            temp = lb(1,:);
            lb(1,:) = lb(j,:);
            lb(j,:) = temp;
        end
    end
    for k = i+1:row
        lb(k,:) = lb(k,:) - (lb(i,:)*(lb(k,i)/lb(i,i)));
    end
end

x=zeros(1,col);

for r = 1 : row
    x(r) = lb(r,col+1);
end;
d = x';
disp(d);

ud = [U d];

for i = row:-1:2
    for k = i-1:-1:1
        ud(k,:) = ud(k,:) - (ud(i,:)*(ud(k,i)/ud(i,i)));
    end
end

x1=zeros(1,col); 

for r = 1 : row
    ud(r,:) = ud(r,:)/ud(r,r);
    x1(r) = ud(r,col+1);
end
t1 = x1';
disp(t1);