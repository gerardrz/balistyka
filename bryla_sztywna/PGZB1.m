function dy=PGBZ1(t,y)

global S g m a 
v=y(1);
Ma=v/a; %musi byæ liczone na bie¿¹co
h = y(4);

%F = 4.74 * 10^(-4) *v*v
teta=y(2);
if Ma<=0.8
    cx=0.3;
elseif Ma<=1.1 && Ma>0.8
    cx=0.45;
else cx=0.35;
end
  
 
if h<5000 
    ro=1.206; %[kg/m3]
elseif h >= 5000 %[m]
    ro = 0.7365;
end

X=cx*((ro*v^2)/2)*S;
G=m*g;
%cx
%Ma
%ro
%h
%S
%v
%X
%G
%teta
%sin(teta)
%(-X-G*sin(teta))/m
dy(1)=(-X-G*sin(teta))/m;
dy(2)=(-G*cos(teta))/(m*v);
dy(3)=y(1)*cos(y(2));
dy(4)=y(1)*sin(y(2));
dy=dy';






