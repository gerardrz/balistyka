% zadanie zwi¹zane z g³ównym problemem balistycznym 
%si³y aerodynamiczne powstaj¹, poniewa¿ s¹ si³y tarcia i ciœnienie
%powietrza jest nierównomierna na powierzchni ca³ego obiektu 
clc 
clear
global g m a S

%OPRACOWAÆ ALGORYTM I PROGRAM KOMPUTEROWY SYMULACJI LOTU 122 mm POCISKU
%OD-462 Z WYKORZYSTANIEM PGBZ, DLA NASTÊPUJ¥CYCH DANYCH

%DANE WEJSCIOWE
m=21.76 %kg
a=340 %[m/s]%prêdkoœæ dzwiêku jest sta³a 
g=9.81 %m/s2
S = pi * 0.122*0.122 %[m2]
v0=400 %[m/s]
%rho = 
teta_stop=30;
teta_rad=teta_stop*(pi/180);



xz0=0;
yz0=0;
options=odeset('Events','PGZB_WAR'); 
[t,y]= ode45(@PGZB1, [0:0.1:30], [v0, teta_rad, xz0 , yz0], options);

stopnie = 180/pi*y(:,2)

%y(:,1) - pierwsza kolumna - prêdkoœæ
%y(:,2) - druga kolumna - k¹t
%y(:,3) - pierwsza kolumna - x
%y(:,4) - pierwsza kolumna - y
%Wykres v(t)
figure(1);
plot(t,y(:,1));
title('v(t)');
ylabel('v[m/s]');
xlabel('t[s]');

%krzywa balistyczna
figure(2)
plot(y(:,3), y(:,4))
title('y(x)')

% wykres nachylenia
figure(3);
plot(t,stopnie);
title('theta(t)');
ylabel('theta[stopnie]');
xlabel('t[s]');

%droga od czasu
figure(4);
plot(t,y(:,3));
title('x(t)');
ylabel('x[m]');
xlabel('t[s]');

%wysokoœæ od czasu
figure(5);
plot(t,y(:,4));
title('y(t)');
ylabel('y[m]');
xlabel('t[s]');

%stopnie


