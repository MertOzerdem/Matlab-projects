%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ts = 0.01; %time interval
t=0:Ts:2-Ts;
f0 = 500;
u = 500;
x5 = cos((2*pi*u*t.^2) + (2*pi*f0*t) + pi);

plot(t,x5);
xlim([0 2]);
ylim([-1.5 1.5]);
grid on;
xlabel('Seconds(t)');
ylabel('x(t)');
title('Chrip signal 500Hz to 2500Hz');
soundsc(x5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%