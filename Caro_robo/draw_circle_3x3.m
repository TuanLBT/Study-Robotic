l2=250; l3=200; l4=150;
r=10; z= 0; L=300;
X = [50 150 250];
Y = [50 150 250];
for i=1:1:3
    for j=1:1:3
            for t=0:0.1:2*pi    
                x0 = X(i);
                y0 = Y(j);
                x = x0 + r*cos(t);
                y = y0 + r*sin(t);
                l1 = z+l4;

                c2 = (x^2 + y^2 - l2^2 - l3^2) / (2*l2*l3);
                s2 = sqrt(abs(1-(c2)^2));
                t2 = atan2(s2,c2);

                c1 = x*l3*s2 - y*(l3*c2+ l2);
                s1 = y*l3*s2 + x*(l3*c2 + l2);
                t1 = atan2(s1,c1);

                Px = -l2*sin(t1) - l3*sin(t1+t2);
                Py = l2*cos(t1) + l3*cos(t1+t2);
                Pz = l1-l4;

                    plot(Px,Py,'*');xlabel("Px");ylabel("Py");zlabel("Pz");
                    pause(0.1);
                    grid on
                    hold on
            end
    end
end