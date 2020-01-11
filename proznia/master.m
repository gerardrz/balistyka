clc 
clear all
[x,y]= ode45('proznia', [0,5], 4);
plot(x,y)
grid