%Função Convoluçao 
%
%Retorna a covolução entre dois sinais, e o intervalo n do resultado da
%convoluçao
%
%Parametros (sinal x[n], n_x ,sinal h[n], n_h)

function [Sinal_y, n_y] = Convolucao(Sinal_x, n_x, Sinal_h, n_h)
%encontrando o valor de n_y
min_n = n_x(1) + n_h(1);
max_n = n_x(end) + n_h(end);
n_y = [min_n:max_n];

size_x = length(Sinal_x);
size_h = length(Sinal_h);
size_y =  (size_x + size_h -1);

Sinal_y = zeros(1, size_y);
%realizando a soma de convolução
for i = 1:size_x
      for k = 1:size_h
        Sinal_y(i+k-1) = Sinal_y(i+k-1) + Sinal_h(k)*Sinal_x(i);
      end
end


%plotando os sinais 
subplot(3,1,1);
stem(n_x, Sinal_x);
title('Sinal x[n]');

subplot(3,1,2);
stem(n_h, Sinal_h);
title('Sinal h[n]');

subplot(3,1,3);
stem(n_y, Sinal_y);
title('Sinal y[n]');


end

