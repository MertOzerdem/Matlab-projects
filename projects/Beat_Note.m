%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f1 = 10;
f2 = 1000;
t=0:0.0001:3;
x4 = cos(2*pi*f1*t).*cos(2*pi*f2*t)

plot(t,x4,'-r');
xlim([0 0.1]);
ylim([-1.5 1.5]);
grid on;
xlabel('t in(Seconds)');
ylabel('x(t)');
title('Beat Note');
soundsc(x4);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%