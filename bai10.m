syms t1 t2 t3 t4 l1 l2 l3 l4 l5 l6 
Tz0 = [ 1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
Rz0 = [cos(t1) -sin(t1)  0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
Tz1 = [ 1 0 0 0; 0 1 0 0; 0 0 1 l2; 0 0 0 1];
Rx1 = [ 1 0 0 0; 0 cos(t2) -sin(t2) 0; 0 sin(t2) cos(t2) 0; 0 0 0 1];
Ty2 = [ 1 0 0 0; 0 1 0 l3; 0 0 1 0; 0 0 0 1];
Rx2 = [ 1 0 0 0; 0 cos(t3) -sin(t3) 0; 0 sin(t3) cos(t3) 0; 0 0 0 1];
Ty3 = [ 1 0 0 0; 0 1 0 l4; 0 0 1 0; 0 0 0 1];
Rx3 = [ 1 0 0 0; 0 cos(t4) -sin(t4) 0; 0 sin(t4) cos(t4) 0; 0 0 0 1];
Ty4 = [ 1 0 0 0; 0 1 0 l5; 0 0 1 0; 0 0 0 1];
Ty5 = [ 1 0 0 0; 0 1 0 0; 0 0 1 l6; 0 0 0 1];
P = [0;0;0;1];
disp(simplify(Tz0*Rz0*Tz1*Rx1*Ty2*Rx2*Ty3*Rx3*Ty4*H7*Ty5*P));

l1 = 30;
l2 = 10;
l3 = 20;
l4= 15;
l5 = 5;
l6 = 5;
for t1=0:0.5:pi/2
    for t2=0:0.5:pi/2
        for t3=0:0.5:pi/2
            for t4=0:0.5:pi/2
                Px= l6*((sin(t2 + 2*t3)*sin(2*t1))/2 + cos(t2 + 2*t3)*sin(t2 + t3 + t4)*sin(t1) + 	sin(t2 + 2*t3)*cos(t2 + t3 + t4)*cos(t1)*sin(t1)) - 	cos(t1)*sin(t1)*((l5*cos(t2 + t3 - t4))/2 + l4*cos(t2 + t3) + l3*cos(t2) - 	(l5*cos(t2))/2 + (l5*cos(t2 + 2*t3))/2 + (l5*cos(t2 + t3 + t4))/2) - 	l4*cos(t2 + t3)*sin(t1) - l3*cos(t2)*sin(t1) + sin(t2 + t3 + t4)*sin(t1)*(l1 	+ l2 + l4*sin(t2 + t3) + l3*sin(t2) + l5*cos(t2 + t3)*sin(t3) + l5*sin(t2 + 	t3)*cos(t4)) - l5*cos(t2 + t3 + t4)*sin(t1) - cos(t2 + t3 + 	t4)*cos(t1)*sin(t1)*((l5*cos(t2 + t3 - t4))/2 + l4*cos(t2 + t3) + l3*cos(t2) 	- (l5*cos(t2))/2 + (l5*cos(t2 + 2*t3))/2 + (l5*cos(t2 + t3 + t4))/2);
                Py= l4*cos(t2 + t3)*cos(t1) - sin(t1)^2*((l5*cos(t2 + t3 - t4))/2 + l4*cos(t2 + 	t3) + l3*cos(t2) - (l5*cos(t2))/2 + (l5*cos(t2 + 2*t3))/2 + (l5*cos(t2 + t3 + 	t4))/2) - l6*(cos(t2 + 2*t3)*sin(t2 + t3 + t4)*cos(t1) - sin(t2 + 	2*t3)*sin(t1)^2 + sin(t2 + 2*t3)*cos(t2 + t3 + t4)*cos(t1)^2) + 	l3*cos(t1)*cos(t2) - sin(t2 + t3 + t4)*cos(t1)*(l1 + l2 + l4*sin(t2 + t3) + 	l3*sin(t2) + l5*cos(t2 + t3)*sin(t3) + l5*sin(t2 + t3)*cos(t4)) + l5*cos(t2 	+ t3 + t4)*cos(t1) + cos(t2 + t3 + t4)*cos(t1)^2*((l5*cos(t2 + t3 - t4))/2 + 	l4*cos(t2 + t3) + l3*cos(t2) - (l5*cos(t2))/2 + (l5*cos(t2 + 2*t3))/2 + 	(l5*cos(t2 + t3 + t4))/2);
                Pz= l1 + l2 + l6*(cos(t3 - t4)/2 + cos(t1 + 2*t2 + 3*t3 + t4)/4 - cos(t1 + t3 - 	t4)/4 - cos(t1 - t3 + t4)/4 + cos(2*t2 - t1 + 3*t3 + t4)/4 + cos(2*t2 + 3*t3 + 	t4)/2) + l4*sin(t2 + t3) + cos(t2 + t3 + t4)*(l1 + l2 + l4*sin(t2 + t3) + 	l3*sin(t2) + l5*cos(t2 + t3)*sin(t3) + l5*sin(t2 + t3)*cos(t4)) + l3*sin(t2) 	+ l5*sin(t2 + t3 + t4) + sin(t2 + t3 + t4)*cos(t1)*((l5*cos(t2 + t3 - t4))/2 + 	l4*cos(t2 + t3) + l3*cos(t2) - (l5*cos(t2))/2 + (l5*cos(t2 + 2*t3))/2 + 	(l5*cos(t2 + t3 + t4))/2);
                plot3(Px,Py,Pz,'*');
                hold on
            end
        end
    end
end
                

