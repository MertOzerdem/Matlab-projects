%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a = 1; %frequency multiplier
f0 = a*440; %440 fundemental frequency
w0 = 2*pi*f0;
Ts = 0.0001; %time interval between samples
n=0:Ts:3-Ts; % sample space
x1=sin(w0*n); % signal (sampled)
%set = 0.01/30000;
%t=0:set:0.01-set;
plot(n,x1,'-r');
xlim([0 0.01]);
ylim([-1.5 1.5]);
grid on;
xlabel('Seconds(t)');
ylabel('x(t)');
title('Sampled Sinosoidal Signal of musical note E');
sound(x1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
