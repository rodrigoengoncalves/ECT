% Ficha 1 - Sinais e Sistemas
clear all; close all; clc;

%% Exercicio 1.1
disp("Exercicio 1.1");
z1 = (1/2) * exp(j * pi)
z2 = exp(j * pi / 2)
z3 = exp(-j * pi / 2)
z4 = exp(j * 5 * pi / 2)
z5 = sqrt(2) * exp(j * 7 * pi / 4)
z6 = sqrt(2) * exp(j * 9 * pi / 4)
z7 = sqrt(2) * exp(-j * 9 * pi / 4)

%% Exercicio 1.2
disp("Exercicio 1.2");

valores = [5, -2, -3, 1/2 - j*sqrt(3)/2, 1+j, (1-j)^2, j*(1-j), (1+j)*(1-j), (sqrt(2)+j*sqrt(2))/(1+j*sqrt(3))];

for k = 1:length(valores)
    r = abs(valores(k));
    theta = angle(valores(k));
    printf("Valor %d: r = %f, theta = %f pi\n", k, r, theta/pi);
end
