function [wartosc, koniec, monotonicznosc]=warunki(t,y)% warunki wyj�ciowe i "warunki" - nazwa funkcji
wartosc=y(4); % 4 kolumna obliczenie wysko�ci lotu
koniec=1;
monotonicznosc=0; % spos�b wymuszenia zako�czenia dzia�ania programu . zako�czenie lotu pocisku w powietrzu