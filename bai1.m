syms t4 t5 t6 pi;
TZ1 = [1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1];
TZ2 = [1 0 0 0;0 1 0 0;0 0 1 l2;0 0 0 1];
TZ3 = [1 0 0 0;0 1 0 0;0 0 1 l3;0 0 0 1];
RZ4 = [cos(t4) -sin(t4) 0 0; sin(t4) cos(t4) 0 0; 0 0 1 0; 0 0 0 1];
TZ5 = [1 0 0 0;0 1 0 0;0 0 1 l4;0 0 0 1];
RX6 = [1 0 0 0;0 cos(t5) -sin(t5) 0;0 sin(t5) cos(t5) 0;0 0 0 1];
RY7 = [cos(t6) 0 sin(t6) 0;0 1 0 0;-sin(t6) 0 cos(t6) 0;0 0 0 1];
TX8 = [1 0 0 l5;0 1 0 0;0 0 1 0;0 0 0 1];
P = [0;0;0;1];
a = simplify(TZ1*TZ2*TZ3*RZ4*TZ5*RX6*RY7*TX8*P);
disp(a);

l1=30; l2=20; l3=30; l4=10; l5=15;
for t4=0:0.1:pi/2
    for t5=0:0.1:pi/2
        for t6=0:0.1:pi/2
            x = l5*(cos(t4)*cos(t6) - sin(t4)*sin(t5)*sin(t6));
            y = l5*(cos(t6)*sin(t4) + cos(t4)*sin(t5)*sin(t6));
            z = l1 + l2 + l3 + l4 - l5*cos(t5)*sin(t6);
            plot3(x,y,z,'*');
            hold on 
        end
    end
end