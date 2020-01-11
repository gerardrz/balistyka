clc
clear all
%dane
g=-9.81;
V0=900;
kat=30;
tt=90;
katr=kat*pi/180;
Vx=V0*cos(katr);
Vy=V0*sin(katr);
przedzial=[0:0.1:tt];


y0=[Vx Vy 0 0]; %warunki poczatkowe

options=odeset('Events',@warunki);
[t,y]=ode45(@proznia,przedzial,y0,options);

Vv=sqrt(y(:,1).^2+y(:,2).^2);


%wykresy
figure(1);
plot(y(:,3),y(:,4)); % wywo³anie trajektori lotu zmiennne z 3 i 4 kolumny
title('wykres skladowej poziomej prêdkoœci w funkcji czasu');
xlabel('t');
ylabel('V');


figure(2);
plot(t,Vv);
title('predkosc w funkcji czasu');
xlabel('t [s]');
ylabel('V [m/s]');


%wartoœci obliczane

donosnoscmax=V0^2*sin(2*katr)/g;     %analitycznie
donosnoscmaxx=max(y(:,3));           %numerycznie
bladwzgdonosnosci=abs((donosnoscmaxx-donosnoscmax)/donosnoscmax)


wysokoscmax=((V0*sin(katr))^2)/(2*g) %analitycznie
wysokoscmaxx=max(y(:,4))             %numerycznie
bladwzgwysokosci=abs((wysokoscmaxx-wysokoscmax)/wysokoscmax)


tcalk=2*V0*sin(katr)/g                %analitycznie
bladwzgczasu=abs((tt-tcalk)/tcalk)






