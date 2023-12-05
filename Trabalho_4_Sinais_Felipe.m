Fs = 8192; %Freq de amostragem
amp = 1;
t = linspace(0,30,Fs);
f = 1/(2*pi);
x1 = sawtooth(t,1);
% x2 = 
% subplot(3,3,1)
% plot(t,x1)
% title('Sinal Original')
% % Loop para fazer as séries
% for i = 1:6
% N = i; %Ordem da série
% Fs = 8192; %Freq de amostragem
% t = linspace(0,30-1/8192,Fs);
% f = 1/(2*pi);
% amp = 1;
% subplot(3,3,N+1)
% h=plot(NaN,NaN);
% tt = sprintf('Ordem %d',N);
% title(tt),axis([0 30 -0.2 1.2])
% res = amp/2;
% for k=1:N
% res = res - (amp/(k*pi))*sin(2*pi*k*f*t);
% set(h,'XData',t,'YData',res);
% end
% end
% % Fim do plot das séries


% subplot(3,3,8)

   T_0 = 2*pi; N_0 = 256; T = T_0/N_0; t = (0:T:T*(N_0-1))'; M = 20;
   D_n = fft(x1)/N_0; n = [-N_0/2:N_0/2-1]';
   clf; subplot(2,2,1); %stem(n,abs(fftshift(D_n)),'k');
   axis([-M M -.1 .6]); xlabel('n'); ylabel('|D_n|');
   subplot(2,2,2); %stem(n, angle(fftshift(D_n)),'k');
   axis([-M M -pi pi]); xlabel('n'); ylabel('\angle D_n [rad]')

   n = [0:M]; C_n(1) = abs(D_n(1)); C_n(2:M+1) = 2*abs(D_n(2:M+1));
   theta_n(1) = angle(D_n(1)); theta_n(2:M+1) = angle(D_n(2:M+1));
   subplot(2,2,3); stem(n, C_n, 'k');
   xlabel('n'); ylabel('C_n');
   subplot(2,2,4); stem(n,theta_n,'k');
   xlabel('n'); ylabel('\theta_n [rad]');