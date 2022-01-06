%Função Decompoem_sinal
%
%Retorna a parte par e impar de um sinal do tipo x[n]
%
%Parametros (sinal x[n], intervalo n)

function [Sinal_par, Sinal_impar] = Decompoem_sinal(x,n1)
%funcçao fliplr inverte o sinal
n2 = -fliplr(n1); %sinal invertido de n de x
y = fliplr(x); %sinal como uma versão invertida do sinal de entrada 


u = min(min(n1), min(n2));
t = max(max(n1), max(n2));

r = u:1:t;
z1 = [];
temp = 1;

for i = 1: length(r)
    if(r(i) < min(n1) || r(i) > max(n1))
        z1 = [z1 0];
    else
        z1 = [z1 x(temp)];
        temp = temp + 1;
    end
end

z2 = [];
temp = 1;


for i = 1: length(r)
    if(r(i) < min(n2) || r(i) > max(n2))
        z2 = [z2 0];
    else
        z2 = [z2 y(temp)];
        temp = temp + 1;
    end
end

Sinal_par = (z1 + z2) / 2; %parte even
Sinal_impar = (z1 - z2) / 2; %parte odd 

subplot(3,1,1);
stem(r,z1);
title('sinal original');

subplot(3,1,2);
stem(r, Sinal_par);
title('sinal par');

subplot(3,1,3);
stem(r, Sinal_impar);
title('odd impar');


end