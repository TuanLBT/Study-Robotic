syms l1 l2 l3 l4 l5 t1 t2
l1 = 20;
l2 = 15;
l3 = 10;
l4 = 15;
l5 = 15;
for t1=0:0.1:2*pi
    for t2=0:0.1:2*pi
        Px = l2*cos(t1) + l3*sin(t1) + l4*cos(t1)*cos(t2) + l5*cos(t1)*sin(t2);
        Py= l3*cos(t1) - l2*sin(t1) - l4*cos(t2)*sin(t1) - l5*sin(t1)*sin(t2);
        Pz = l1 + l5*cos(t2) - l4*sin(t2);
        plot3(Px,Py,Pz,'*');
        hold on
    end
end
