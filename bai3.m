syms l1 l2 l3 l4 l5 l6 l7 l8 t1 t2 t3
RZ1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
TZ1 = [1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1];
TX2 = [1 0 0 l2;0 1 0 0;0 0 1 0;0 0 0 1];
RZ2 = [cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
TZ3 = [1 0 0 0;0 1 0 0;0 0 1 l3;0 0 0 1];
TX4 = [1 0 0 l4;0 1 0 0;0 0 1 0;0 0 0 1];
RZ3 = [cos(t3) -sin(t3) 0 0; sin(t3) cos(t3) 0 0; 0 0 1 0; 0 0 0 1];
TZ8 = [1 0 0 0;0 1 0 0;0 0 1 l8;0 0 0 1];
TX5 = [1 0 0 l5;0 1 0 0;0 0 1 0;0 0 0 1];
TZ6 = [1 0 0 0;0 1 0 0;0 0 1 l6;0 0 0 1];
TX7 = [1 0 0 l7;0 1 0 0;0 0 1 0;0 0 0 1];
P = [0;0;0;1];
disp(simplify(RZ1*TZ1*TX2*RZ2*TZ3*TX4*RZ3*TZ8*TX5*TZ6*TX7*P));


l1 = 20;
l2 = 15;
l3 = 10;
l4 = 10;
l5 = 5;
l6 = 5;
l7 = 10;
l8 = 5;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            Px = 	l4*cos(t1 + t2) + l2*cos(t1) + l5*cos(t1 + t2 + t3) + l7*cos(t1 + t2 + t3);
            Py = l4*sin(t1 + t2) + l2*sin(t1) + l5*sin(t1 + t2 + t3) + l7*sin(t1 + t2 + t3);
            Pz = l1 + l3 + l6 + l8;
            plot3(Px,Py,Pz,'*');
            hold on
        end
    end
end

