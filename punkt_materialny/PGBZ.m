% zadanie zwi¹zane z g³ównym problemem balistycznym 
%si³y aerodynamiczne powstaj¹, poniewa¿ s¹ si³y tarcia i ciœnienie
%powietrza jest nierównomierna na powierzchni ca³ego obiektu 
clc 
clear
global g m a 

%OPRACOWAÆ ALGORYTM I PROGRAM KOMPUTEROWY SYMULACJI LOTU 122 mm POCISKU
%OD-462 Z WYKORZYSTANIEM PGBZ, DLA NASTÊPUJ¥CYCH DANYCH

%DANE WEJSCIOWE
m=21.76 %kg
a=340 %[m/s]%prêdkoœæ dzwiêku jest sta³a 
g=9.81 %m/s2
v0=400 %[m/s]
 teta_stop=30;
teta_rad=teta_stop*(pi/180);

xz0=0;
yz0=0;
options=odeset('Events','PGZB_WAR'); 
[t,y]= ode45(@PGZB1, [0:0.1:5], [v0, teta_rad, xz0 , yz0]);


