
function dy=proznia(t,y)
g=-9.81;

dy(1)=0;
dy(2)=-g;
dy(3)=y(1);
dy(4)=y(2);
dy=dy';

