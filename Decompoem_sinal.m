%Função Decompoem_sinal
%
%Retorna as partes par, impar, e a soma daspartes de um sinal do tipo x[n]
%
%Parametros (sinal x[n], intervalo n)

function [Sinal_par, Sinal_impar, Soma_sinal] = Decompoem_sinal(x,n)

n_reverse = -fliplr(n); %sinal invertido de n de x
y = fliplr(x); %sinal como uma versão invertida do sinal de entrada 

min_valor = min(min(n), min(n_reverse));
max_valor = max(max(n), max(n_reverse));

r = min_valor:1:max_valor; %intervalo comum 
z1 = [];
temp = 1;

for i = 1: length(r)
    if(r(i) < min(n) || r(i) > max(n))
        z1 = [z1 0];
    else
        z1 = [z1 x(temp)];
        temp = temp + 1;
    end
end

z2 = [];
temp = 1;

for i = 1: length(r)
    if(r(i) < min(n_reverse) || r(i) > max(n_reverse))
        z2 = [z2 0];
    else
        z2 = [z2 y(temp)];
        temp = temp + 1;
    end
end

Sinal_par = (z1 + z2) / 2; %parte part
Sinal_impar = (z1 - z2) / 2; %parte impar 

%soma do sinal_par com o sinal_impar
Soma_sinal = Sinal_impar + Sinal_par;

%plots
subplot(4,1,1);
stem(r,z1);
title('sinal original');

subplot(4,1,2);
stem(r, Sinal_par);
title('sinal par');

subplot(4,1,3);
stem(r, Sinal_impar);
title('sinal impar');

subplot(4,1,4);
stem(r, Soma_sinal);
title('Soma do sinal par com sinal impar');


end