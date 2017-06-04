Ui = cell(1,8);
Ke = cell(1,8);
for i = 1:1:8
    x = Element{i}(1);
    y = Element{i}(2);
    z = Element{i}(3);
    Ui{i} = [U(2*x-1);U(2*x);U(2*y-1);U(2*y);U(2*z-1);U(2*z)];
    x1 = Point{x}(1);
    y1 = Point{x}(2);
    x2 = Point{y}(1);
    y2 = Point{y}(2);
    x3 = Point{z}(1);
    y3 = Point{z}(2);
    Ke{i} = LinearTriangleElementStresses(E,Nu,x1,y1,x2,y2,x3,y3,1,Ui{i});
    disp('simal');
    disp(i);
    disp(Ke{i});
end
