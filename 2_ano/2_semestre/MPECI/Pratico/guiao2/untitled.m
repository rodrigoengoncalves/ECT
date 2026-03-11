%% EX 1
% defeniçoes do dominio 
x = 1:6;   % {1, 2, 3, 4, 5, 6}
f_x = ones(1,6) / 6;
cdf_x = cumsum(f_x);



% a)
figure;
subplot (1,2,1);
stem(x,f_x);
axis([0 7 0 0.2]);
title("Exercicio 1-a)");
xlabel("x");
ylabel("prob. mass function of x");


%b) 
subplot (1,2,2);
% Vetores expandidos para garantir que os degraus começam em 0 e terminam em 1 após x=6
stairs([0,x,7], [0,cdf_x, 1]);
xlim([0 7]);
ylim([0 1.1]);
grid on;
title("Exercicio 1-b)");
xlabel("x");
ylabel("Cumulative distribution function of x");

%% Ex 2

%defenir valores monetarios
x = [5, 10, 100];
%probabilidades teoricas (PMF)
pmf_x = [90,9,1] / 100;
%funçao de destribuiçao acumulada (CDF)
cdf_x = cumsum(pmf_x);

%preparaçao dos vetores para o grafico
x_graf = [0,x,120];
y_graf = [0,cdf_x,1];

%grafico
figure;
stairs(x_graf,y_graf);
grid on;
title("Exercicio 2(c) - Cumulative distribution function of X");
xlabel("x (Euros)");
ylabel("F_X(x)");
xlim([0 120]);
ylim([0 1.1]);

%% Ex 3
%defenir numero de simulaçoes
N = 1e5;

% Gerar matriz 4xN com valores entre 0 e 1.
% A condicao > 0.5 converte para valores logicos: 1 (cara) ou 0 (coroa)
lancamentos = rand(4,N) > 0.5;

%somar todas as colunas (quantas vezes calhou cara)
x = sum(lancamentos);

%a)- Estimar o PMF por frequancia relevante

x_vals = 1:4;
pmf_simulada = zeros(1,5);

for i = 1:5
    pmf_simulada(i) = sum(X == x_vals(i)) / N; 
end

disp("PMF Simulada [P(0) P(1) P(2) P(3) P(4)]:");
disp(pmf_simulada);