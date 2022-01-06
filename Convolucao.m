%Função Convoluçao 
%
%Retorna a covolução entre dois sinais, e o intervalo n do resultado da
%convoluçao
%
%Parametros (sinal x[n], n_x ,sinal h[n], n_h)

function [Sinal_y, n_y] = Convolucao(Sinal_x, n_x, Sinal_h, n_h)

min_n = n_x(1) + n_h(1);
max_n = n_x(end) + n_h(end);
n_y = [min_n:max_n];

Sinal_y = conv(Sinal_x, Sinal_h);

%plotando os sinais 
subplot(3,1,1);
stem(n_x, Sinal_x, 'k', 'LineWidth', 3);
title('Sinal x[n]');

subplot(3,1,2);
stem(n_h, Sinal_h, 'k', 'LineWidth', 3);
title('Sinal h[n]');

subplot(3,1,3);
stem(n_y, Sinal_y, 'k', 'LineWidth', 3);
title('Sinal y[n]');


end

