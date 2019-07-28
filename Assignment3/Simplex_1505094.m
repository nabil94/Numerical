function Simplex_1505094(A)

x = Simplex(A);
disp(x);
x1 = Simplex(x);
disp(x1);
[m,n] = size(A);
fprintf('Max value ');
disp(x1(1,n));
end