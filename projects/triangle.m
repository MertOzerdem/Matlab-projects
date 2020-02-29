%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t= 0:0.0001:3;
s = sin(2*pi*440*t) + sin(2*pi*554*t) + sin(2*pi*659*t);
plot(t,s);
grid on;
xlabel('seconds');
ylabel('s(t)');
title('Major triad');
soundsc(s);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%