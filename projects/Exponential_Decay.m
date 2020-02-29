%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f0 =440;
a = 2;
t=0:0.0001:3;
x3 = (exp(-((a^2)+2)*t)).*cos(2*pi*f0*t);

plot(t,x3,'-r');
xlim([0 3]);
ylim([-1.5 1.5]);
grid on;
xlabel('t in(Seconds)');
ylabel('x(t)');
title('Sinusoid with Exponentially Decaying Envelope');
soundsc(x3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%