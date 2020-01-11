% zadanie zwi�zane z g��wnym problemem balistycznym 
%si�y aerodynamiczne powstaj�, poniewa� s� si�y tarcia i ci�nienie
%powietrza jest nier�wnomierna na powierzchni ca�ego obiektu 
clc 
clear
global g m a 

%OPRACOWA� ALGORYTM I PROGRAM KOMPUTEROWY SYMULACJI LOTU 122 mm POCISKU
%OD-462 Z WYKORZYSTANIEM PGBZ, DLA NAST�PUJ�CYCH DANYCH

%DANE WEJSCIOWE
m=21.76 %kg
a=340 %[m/s]%pr�dko�� dzwi�ku jest sta�a 
g=9.81 %m/s2
v0=400 %[m/s]
 teta_stop=30;
teta_rad=teta_stop*(pi/180);

xz0=0;
yz0=0;
options=odeset('Events','PGZB_WAR'); 
[t,y]= ode45(@PGZB1, [0:0.1:5], [v0, teta_rad, xz0 , yz0]);


