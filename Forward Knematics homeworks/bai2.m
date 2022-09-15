syms l1 l2 l3 l4 l5 t1 t2 s
TZ1 = [1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1];
RZ1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
TX2 = [1 0 0 l2;0 1 0 0;0 0 1 0;0 0 0 1];
TZ3 = [1 0 0 0;0 1 0 0;0 0 1 l3;0 0 0 1];
RZ2 = [cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
TX4 = [1 0 0 l4;0 1 0 0;0 0 1 0;0 0 0 1];
TZ5 = [1 0 0 0;0 1 0 0;0 0 1 l5;0 0 0 1];
P = [0;0;0;1];
disp(simplify(TZ1*RZ1*TX2*TZ3*RZ2*TX4*TZ5*P));

l1 = 30;
l2 = 40;
l3 = 10;
l4 = 40;
l5 = 30;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        Px = l4*cos(t1 + t2) + l2*cos(t1);
        Py = l4*sin(t1 + t2) + l2*sin(t1);
        Pz = l1 + l3 + l5 +s;
        plot3(Px,Py,Pz,'*');
        hold on
    end
end
