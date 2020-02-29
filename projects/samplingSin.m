fy = 1; %signal frequency in Hz
wy = 2*pi*fy; %signal frequency in rad/s
fs = 7; %sampling frequency in Hz
tiv = 1/6; %time interval between samples
t=0:tiv:(3-tiv); % time interval set
y=sin(wy*t); % signal data set
plot(t,y,'-kd'); %plot figure

axis([0 3 -1.5 1.5]);
grid on;
xlabel('seconds');
title('sine signal');