syms l1 l2 l3 l4 l5 l6 l7 t1 t2 t3 t2 t4 t5 STEP
l1 = 10;
l2 = 20;
l3 = 30;
l4 = 40;
l5 = 10;
l6 = 25;
l7 = l6-l5;
STEP =0.5;
for t1=0:STEP:2*pi
    for t2 = 0:STEP:pi/2
        for t3=0:STEP:pi/2
            for t4=0:STEP:pi/2
                for t5=0:STEP:pi/2
                    Px = l5*(cos(t1)*sin(t5) + sin(t2 + t3 + t4)*cos(t5)*sin(t1)) - l1*sin(t1) - l4*cos(t2 + t3)*sin(t1) + l3*sin(t1)*sin(t2) - l5*cos(t2 + t3 + t4)*sin(t1) - l7*cos(t2 + t3 + t4)*sin(t1);
                    Py = l5*(sin(t1)*sin(t5) - sin(t2 + t3 + t4)*cos(t1)*cos(t5)) + l1*cos(t1) + l4*cos(t2 + t3)*cos(t1) - l3*cos(t1)*sin(t2) + l5*cos(t2 + t3 + t4)*cos(t1) + l7*cos(t2 + t3 + t4)*cos(t1);
                    Pz = l2 + l5*(cos(t2 + t3)*sin(t4) + sin(t2 + t3)*cos(t4)) + l7*(cos(t2 + t3)*sin(t4) + sin(t2 + t3)*cos(t4)) + l4*sin(t2 + t3) + l3*cos(t2) - l5*cos(t5)*(sin(t2 + t3)*sin(t4) - cos(t2 + t3)*cos(t4));
                    plot3(Px,Py,Pz,'*');
                    hold on
                end
            end
        end
    end
end
