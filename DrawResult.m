Beishu = 500000;%位移放大倍数，方便可视化
X = [];
Y = [];
X1 = [];
Y1 = [];
hold on
for i = 1:1:62
    A = zeros(1,4);
    B = zeros(1,4);
    A1 = zeros(1,4);
    B1 = zeros(1,4);
    for j = 1:1:3
        A(j) = Point{Element{i}(j)}(1);
        B(j) = Point{Element{i}(j)}(2);        
        A1(j) = A(j) + Beishu*U(2*Element{i}(j)-1);
        B1(j) = B(j) + Beishu*U(2*Element{i}(j));
    end
    A(4) = Point{Element{i}(1)}(1);
    B(4) = Point{Element{i}(1)}(2);        
    A1(4) = A(4) + Beishu*U(2*Element{i}(1)-1);
    B1(4) = B(4) + Beishu*U(2*Element{i}(1));
    plot(A,B,'k--','LineWidth',2);
    hold on;
    plot(A1,B1,'r','LineWidth',2);
    hold on;
end
