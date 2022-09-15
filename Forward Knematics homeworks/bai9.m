syms l1 l2 l3 l4 l5 l6 l7 t1 t2 t3 s
TZ1 = [1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1];
RZ1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
TZ2 = [1 0 0 0;0 1 0 0;0 0 1 l2;0 0 0 1];
TY4 = [1 0 0 0;0 1 0 l4;0 0 1 0;0 0 0 1];
TZ3 = [1 0 0 0;0 1 0 0;0 0 1 l3;0 0 0 1];
RZ2 = [cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
TY5 = [1 0 0 0;0 1 0 l5;0 0 1 0;0 0 0 1];
TZ6 = [1 0 0 0;0 1 0 0;0 0 1 l6;0 0 0 1];
RZ3 = [cos(t3) -sin(t3) 0 0; sin(t3) cos(t3) 0 0; 0 0 1 0; 0 0 0 1];
TZ7 = [1 0 0 0;0 1 0 0;0 0 1 l7;0 0 0 1];
P = [0;0;0;1];
disp(simplify(TZ1*RZ1*TZ2*TY4*TZ3*RZ2*TY5*TZ6*RZ3*TZ7));

l1 = 40;
l2 = 10;
l3 = 5;
l4 = 30;
l5 = 20;
l6 = 20;
l7 =10;
s = 10;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            Px = 	- l5*sin(t1 + t2) - l4*sin(t1);
            Py =	l5*cos(t1 + t2) + l4*cos(t1);
            Pz = 	l1 + l2 + l3 - l6 - l7 + s;
            plot3(Px,Py,Pz,'*');
            hold on 
        end
    end
end

