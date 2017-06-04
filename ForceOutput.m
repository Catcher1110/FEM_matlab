Ui = cell(1,4);
Keo = cell(1,4);
for i = 1:1:4
    x = Element{i}(1);
    y = Element{i}(2);
    z = Element{i}(3);
    w = Element{i}(4);
    Ui{i} = [U(2*x-1);U(2*x);U(2*y-1);U(2*y);U(2*z-1);U(2*z);U(2*w-1);U(2*w)];
    x1 = Point{x}(1);
    y1 = Point{x}(2);
    x2 = Point{y}(1);
    y2 = Point{y}(2);
    x3 = Point{z}(1);
    y3 = Point{z}(2);
    x4 = Point{w}(1);
    y4 = Point{w}(2);
    Keo{i} = BilinearQuadElementStresses(E,Nu,x1,y1,x2,y2,x3,y3,x4,y4,1,Ui{i});
    disp('simal');
    disp(i);
    disp(Keo{i});
end
