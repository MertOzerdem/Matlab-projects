%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t= 0:0.0001:3;
Phase = pi/4;
s = sin(2*pi*587*t + Phase);
plot(t,s);
grid on;
xlabel('seconds');
ylabel('s(t)');
title('Note D with phase phase 3pi/4');
xlim([0 0.01]);
ylim([-1.5 1.5]);
soundsc(s);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%