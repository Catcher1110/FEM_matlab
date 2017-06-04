function Sum = DoubleInt(S)
syms s t
f = sym(S);
sum = 0;
for i = 1:1:100
    t = -1+i*0.02;
    sum = sum+eval(f)*0.02;
end
Sum = 0;
for j = 1:1:100
    s = -1 +j*0.02;
    Sum = Sum + eval(sum)*0.02;
end
disp('here');
Sum = double(Sum);
