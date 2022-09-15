syms l1 l2 ;
syms t1 t2 t3;
R1 = [1 0 0 0; 0 cos(t2) -sin(t2) 0; 0 sin(t2) cos(t2) 0; 0 0 0 1];
R2 = [cos(-t1) 0 sin(-t1) 0; 0 1 0 0; -sin(-t1) 0 cos(-t1) 0; 0 0 0 1];
T1 = [1 0 0 0; 0 1 0 0; 0 0 1 -l1; 0 0 0 1];
R3 = [cos(-t3) 0 sin(-t3) 0; 0 1 0 0; -sin(-t3) 0 cos(-t3) 0; 0 0 0 1];
T2 = [1 0 0 0; 0 1 0 0; 0 0 1 -l2; 0 0 0 1];
P = [0; 0; 0; 1];
simplify(R1*R2*T1*R3*T2*P)

syms t1 t2 t3  pi;
l1=30; l2=30; 
for t1=0:0.2:pi/2
    for t2=0:0.2:pi/2
        for t3=0:0.2:pi/2 
            x = l2*sin(t1 + t3) + l1*sin(t1);
            y = sin(t2)*(l2*cos(t1 + t3) + l1*cos(t1));
            z = -cos(t2)*(l2*cos(t1 + t3) + l1*cos(t1));
            plot3(x,y,z,'*');
            hold on
        end
    end
end



