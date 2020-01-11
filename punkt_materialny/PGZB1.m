function dy=PGBZ1(t,y)

global g m a v teta
v=y(1)
Ma=v/a %musi byæ liczone na bie¿¹co

teta=y(2)
if Ma<=0.8
    cx=0.3
elseif Ma<=1.1 && Ma>0.8
    cx=0.45
else cx=0.35
end
  
 
if h<5000 
    ro=1.206 %[kg/m3]
else h=>5000 %[m]
    ro=0.7365
end


dy(1)=(-X-G*sin(teta))/m;
dy(2)=(-G*cos(teta))/(m*v);
dy(3)=y(1)*cos(y(2));
dy(4)=y(1)*sin(y(2));
dy=dy';

x=cx*(Ma)*((ro*(h)*v^2)/2)*S
G=m*g




