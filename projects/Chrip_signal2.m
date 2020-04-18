%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ts = 0.01; %time itterval
t=0:Ts:3-Ts;
f0 = 3000;
u = -5000/6;
x5 = cos((2*pi*u*t.^2) + (2*pi*f0*t));

plot(t,x5);
xlim([0 3]);
ylim([-1.5 1.5]);
grid on;
xlabel('Seconds(t)');
ylabel('x(t)');
title('Chrip signal');
soundsc(x5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
