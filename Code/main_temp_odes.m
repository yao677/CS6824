%main_temp_odes
clc
clear all
close all
global p
param(1); %cell can grow


[T,Y] = ode15s('temp_odes',[0,500],[2,1,1,1,1]);
figure(100);
subplot(3,1,1);
plot(T,Y(:,1),'g');
xlabel('time')
ylabel('species')
legend('p1')
subplot(3,1,2);
plot(T,Y(:,5),'b');
xlabel('time')
ylabel('species')
legend('CpdRp_b')
subplot(3,1,3);
plot(T,Y(:,3),'r');
xlabel('time')
ylabel('species')
legend('CpdR_b')