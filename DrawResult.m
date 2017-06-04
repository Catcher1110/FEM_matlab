Beishu = 500000;%位移放大倍数，方便可视化
X = [];
Y = [];
X1 = [];
Y1 = [];
hold on
for i = 1:1:36
    A = zeros(1,5);
    B = zeros(1,5);
    A1 = zeros(1,5);
    B1 = zeros(1,5);
    for j = 1:1:4
        A(j) = Point{Element{i}(j)}(1);
        B(j) = Point{Element{i}(j)}(2);        
        A1(j) = A(j) + Beishu*U(2*Element{i}(j)-1);
        B1(j) = B(j) + Beishu*U(2*Element{i}(j));
    end
    A(5) = Point{Element{i}(1)}(1);
    B(5) = Point{Element{i}(1)}(2);        
    A1(5) = A(5) + Beishu*U(2*Element{i}(1)-1);
    B1(5) = B(5) + Beishu*U(2*Element{i}(1));
    plot(A,B,'k--','LineWidth',2);
    hold on;
    plot(A1,B1,'r','LineWidth',2);
    hold on;
end
