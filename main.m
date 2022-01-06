close all
clear
clc

n1 = input('Enter the time sample range of x'); %pegando o sinal x
x = input('Enter the sequence'); %pegando o intervalor do sinal x


Decompoem_sinal(x, n1);




%input x,h
%input nx,nh
%calcula n0 com nx e nh

%%criando vetor n
%n = -3:3;

%%criando sinal x
%x = [0 5 2 3 0 0 0];

%%criando sinal h
%h = [0 2 4 0 0 0 0];

%%plotando os sinais 
%subplot(3,1,1)
%stem(n, x, 'k', 'LineWidth', 3)
%title('x[n]')

%subplot(3,1,2)
%stem(n, h, 'k', 'LineWidth', 3)
%title('h[n]')

%%convoluçao 
%y = conv(x, h);
%Convolucao_func(x,h)