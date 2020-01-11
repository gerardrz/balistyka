function [wartosc, koniec, monotonicznosc]=warunki(t,y)% warunki wyjœciowe i "warunki" - nazwa funkcji
wartosc=y(4); % 4 kolumna obliczenie wyskoœci lotu
koniec=1;
monotonicznosc=0; % sposób wymuszenia zakoñczenia dzia³ania programu . zakoñczenie lotu pocisku w powietrzu