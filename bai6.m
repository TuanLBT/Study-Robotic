syms l1 l2 l3 l4 l5 l6 t1 t2 t3
l1 = 20;
l2 = 2;
l3 = 10;
l4 = 30;
l5 = 20;
l6 = 10;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            Px =	-sin(t1)*(l5*cos(t2 + t3) - l2 + l4*cos(t2) + l6*cos(t2 + t3 + t4));
            Py = 	cos(t1)*(l5*cos(t2 + t3) - l2 + l4*cos(t2) + l6*cos(t2 + t3 + t4));
            Pz = 	l1 + l3 + l5*sin(t2 + t3) + l4*sin(t2) + l6*sin(t2 + t3 + t4);
            plot3(Px,Py,Pz,'*');
            hold on 
        end
    end
end
        