function GaussJordan_1505094(a,b)

[row,col] = size(a);
[row1,col1] = size(b);
if row ~= col
    error('Operation cannot be possible');
    return;
end

if row1 ~= col
    error('Operation cannot be possible');
    return;
end

if det(a) == 0
    error('No Solution possible');
    return;
end



ab = [a b];

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

fprintf('After Forward Elimination\n');
disp(ab);

for i = row:-1:2
    for k = i-1:-1:1
        ab(k,:) = ab(k,:) - (ab(i,:)*(ab(k,i)/ab(i,i)));
    end
end

fprintf('After second operation\n');
disp(ab);

x=zeros(1,col); 

for r = 1 : row
    ab(r,:) = ab(r,:)/ab(r,r);
    x(r) = ab(r,col+1);
end
fprintf('After third operation\n');
disp(ab);
disp(x');


        