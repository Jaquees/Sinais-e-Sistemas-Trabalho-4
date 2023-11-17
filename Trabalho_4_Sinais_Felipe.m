x1 = sawtooth(t,1);
subplot(3,3,1)
plot(t,x1)
title('Sinal Original')
for i = 1:7
N = i; %Ordem da s´erie
Fs = 8192; %Freq de amostragem
t = linspace(0,10-1/8192,Fs);
f = 1/(2*pi);
amp = 1;
subplot(3,3,N+1)
h=plot(NaN,NaN);
tt = sprintf('Ordem %d',N);
title(tt),axis([0 10 -0.2 1.2])
res = amp/2;
for k=1:N
res = res - (amp/(k*pi))*sin(2*pi*k*f*t);
set(h,'XData',t,'YData',res);
end
end
N = 500; %Ordem da s´erie
Fs = 8192; %Freq de amostragem
t = linspace(0,10,Fs);
f = 1/(2*pi);
amp = 1;
subplot(3,3,9)
h=plot(NaN,NaN);
tt = sprintf('Ordem %d',N);
title(tt),axis([0 10 -0.2 1.2])
res = amp/2;
for k=1:N
res = res - (amp/(k*pi))*sin(2*pi*k*f*t);
set(h,'XData',t,'YData',res);
end