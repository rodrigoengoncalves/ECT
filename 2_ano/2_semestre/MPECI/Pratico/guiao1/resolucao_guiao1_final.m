%% MPECI - GUIÃO 1 (Resolução 100% Completa)

%% ========================================================================
%% TASK 1 - Simulation of simple random experiments with Matlab
%% ========================================================================
N = 1e5; % Número de experiências para as simulações

%% 1. Moeda 3 vezes, probabilidade de 2 caras
p = 0.5; n = 3; k = 2;
tosses = rand(n, N) < p;
prob_1 = sum(sum(tosses) == k) / N;
fprintf('Task 1.1 - Sim. 2 caras em 3 lançamentos: %.5f\n', prob_1);

%% 2. Lançamento de 15 moedas
n = 15;
tosses = rand(n, N) < p;
prob_2a = sum(sum(tosses) == 6) / N;
fprintf('Task 1.2(a) - Sim. 6 caras em 15 lançamentos: %.5f\n', prob_2a);

prob_2b = sum(sum(tosses) >= 6) / N;
fprintf('Task 1.2(b) - Sim. pelo menos 6 caras em 15 lanç.: %.5f\n', prob_2b);

%% 3. Função e gráficos
% (a) Criamos a função anónima
calcula_prob = @(p, n, k, N) sum(sum(rand(n, N) < p) == k) / N;
fprintf('Task 1.3(a) - Re-estimar 1 com função: %.5f\n', calcula_prob(0.5, 3, 2, N));

% (b) Gráficos n=20, 40, 100
figure('Name', 'Task 1.3(b) - Distribuição número de caras');
ns = [20, 40, 100];
for i = 1:3
    n = ns(i);
    k_vals = 0:n;
    probs = arrayfun(@(k) calcula_prob(0.5, n, k, 10000), k_vals);
    subplot(3, 1, i);
    stem(k_vals, probs, '.');
    title(sprintf('Nº lançamentos n = %d', n));
end

%% 4. Cálculo Analítico
prob_ana_1 = nchoosek(3, 2) * p^2 * (1-p)^1;
prob_ana_2a = nchoosek(15, 6) * p^6 * (1-p)^9;
prob_ana_2b = sum(arrayfun(@(k) nchoosek(15, k)*p^k*(1-p)^(15-k), 6:15));
fprintf('Task 1.4 - Analítico 1: %.5f | 2(a): %.5f | 2(b): %.5f\n', prob_ana_1, prob_ana_2a, prob_ana_2b);

%% 5. Data link BER
p_erro = 1e-5;
n_bits_100 = 100 * 8;
prob_5a = (1 - p_erro)^n_bits_100;
fprintf('Task 1.5(a) - Analítico Prob 0 erros em 100B: %.5f\n', prob_5a);

n_bits_1000 = 1000 * 8;
prob_0 = (1 - p_erro)^n_bits_1000;
prob_1 = n_bits_1000 * p_erro * (1 - p_erro)^(n_bits_1000 - 1);
prob_5b = 1 - prob_0 - prob_1;
fprintf('Task 1.5(b) - Analítico Prob >= 2 erros em 1000B: %.5f\n', prob_5b);

%% 6. (Optional) Faucets factory
p_def = 0.1; n = 5;
% (a) 3 faucets defective
prob_ana_6a = nchoosek(n, 3) * p_def^3 * (1-p_def)^2;
sim_6 = rand(n, N) < p_def;
prob_sim_6a = sum(sum(sim_6) == 3) / N;
fprintf('Task 1.6(a) - Prob(3 defective) -> Analítico: %.5f | Sim: %.5f\n', prob_ana_6a, prob_sim_6a);

% (b) at most 2 defective
prob_ana_6b = sum(arrayfun(@(k) nchoosek(n, k)*p_def^k*(1-p_def)^(n-k), 0:2));
prob_sim_6b = sum(sum(sim_6) <= 2) / N;
fprintf('Task 1.6(b) - Prob(<=2 defective) -> Analítico: %.5f | Sim: %.5f\n', prob_ana_6b, prob_sim_6b);

% (c) Histogram
figure('Name', 'Task 1.6(c) - Histogram defective faucets');
histogram(sum(sim_6), 'Normalization', 'probability');
title('Probability distribution of defective faucets in sample of 5');

%% ========================================================================
%% TASK 2 - Probability, conditional probability, and independence
%% ========================================================================

%% 1. Families
filhos = rand(2, N) < 0.5; % 1=boy, 0=girl
% (a) at least 1 son
at_least_1 = sum(filhos) >= 1;
prob_2_1a = sum(at_least_1) / N;
fprintf('\nTask 2.1(a) - Sim. >=1 boy in 2 children: %.5f\n', prob_2_1a);
% (b) Theor: 1 - P(0 boys)
prob_2_1b = 1 - (0.5 * 0.5);
fprintf('Task 2.1(b) - Theor. >=1 boy: %.5f\n', prob_2_1b);
% (c) Given 1 is boy, prob other is boy (2 boys)
two_boys = sum(filhos) == 2;
prob_2_1c = sum(two_boys) / sum(at_least_1);
theor_1c = (1/4) / (3/4);
fprintf('Task 2.1(c) - Sim. P(2nd boy | >=1 boy): %.5f | Theor: %.5f\n', prob_2_1c, theor_1c);
% (d) Given first is boy, prob second is boy
first_boy = filhos(1, :) == 1;
second_boy_given_first = sum(filhos(2, first_boy) == 1) / sum(first_boy);
fprintf('Task 2.1(d) - Sim. P(2nd boy | 1st boy): %.5f (Independent events)\n', second_boy_given_first);
% (e) 5 children, exactly 1 of the others is boy given at least 1 boy
f5 = rand(5, N) < 0.5;
at_least_1_f5 = sum(f5) >= 1;
% if at least 1 is a boy, we want total exactly 2 boys
total_2_f5 = sum(f5) == 2;
prob_2_1e = sum(total_2_f5 & at_least_1_f5) / sum(at_least_1_f5);
fprintf('Task 2.1(e) - Sim. P(exactly 1 other boy | >=1 boy): %.5f\n', prob_2_1e);
% (f) at least 1 of the others is a boy
total_ge2_f5 = sum(f5) >= 2;
prob_2_1f = sum(total_ge2_f5 & at_least_1_f5) / sum(at_least_1_f5);
fprintf('Task 2.1(f) - Sim. P(>=1 other boy | >=1 boy): %.5f\n', prob_2_1f);

%% 2. Darts
n=20; m=100;
targets = randi(m, n, N);
% (a) no target hit > once
no_col = sum(arrayfun(@(c) length(unique(targets(:,c))) == n, 1:N)) / N;
fprintf('\nTask 2.2(a) - Sim. no collision (n=20, m=100): %.5f\n', no_col);
% (b) at least 1 hit >= 2 times (1 - no_col)
fprintf('Task 2.2(b) - Sim. >=1 collision (n=20, m=100): %.5f\n', 1 - no_col);
% (c) Plot
figure('Name', 'Task 2.2(c) - Dart Collisions');
ms = [1000, 100000];
for idx = 1:2
    probs = zeros(1, 10);
    n_vals = 10:10:100;
    for j = 1:10
        nn = n_vals(j);
        targ = randi(ms(idx), nn, 10000); % 10000 simulacoes para rapidez
        probs(j) = sum(arrayfun(@(c) length(unique(targ(:,c))) < nn, 1:10000)) / 10000;
    end
    subplot(1, 2, idx);
    plot(n_vals, probs, '-o'); title(sprintf('m = %d', ms(idx)));
    xlabel('Number of darts (n)'); ylabel('Prob >=1 collision');
end

%% 3. (Optional) Hash Associative memory
% (a) T=1000, 10 keys
keys = 10; T = 1000;
h = randi([0, T-1], keys, N);
colis = sum(arrayfun(@(c) length(unique(h(:,c))) < keys, 1:N)) / N;
fprintf('\nTask 2.3(a) - Sim. P(>=1 collision, T=1000, 10 keys): %.5f\n', colis);
% (b) Plot collision vs keys T=1000
figure('Name', 'Task 2.3(b/c) - Hash Collisions');
subplot(1,2,1);
k_vals = 10:10:100; p_b = zeros(1,10);
for i=1:10
    h_tmp = randi([0, T-1], k_vals(i), 10000);
    p_b(i) = sum(arrayfun(@(c) length(unique(h_tmp(:,c))) < k_vals(i), 1:10000)) / 10000;
end
plot(k_vals, p_b, '-o'); title('T=1000'); xlabel('Keys'); ylabel('Prob Collision');
% (c) keys=50, prob NO collision vs T
subplot(1,2,2);
T_vals = 100:100:1000; p_c = zeros(1,10);
for i=1:10
    h_tmp = randi([0, T_vals(i)-1], 50, 10000);
    p_c(i) = sum(arrayfun(@(c) length(unique(h_tmp(:,c))) == 50, 1:10000)) / 10000;
end
plot(T_vals, p_c, '-o'); title('Keys=50'); xlabel('T'); ylabel('Prob NO Collision');

%% 4. Birthday
% (a) Smallest n for P > 0.5
n = 1; p_val = 0;
while p_val <= 0.5
    n = n + 1;
    bd = randi(365, n, 10000);
    p_val = sum(arrayfun(@(c) length(unique(bd(:,c))) < n, 1:10000)) / 10000;
end
fprintf('\nTask 2.4(a) - Smallest n for P(birthday match) > 0.5: %d\n', n);
% (b) Smallest n for P > 0.9
while p_val <= 0.9
    n = n + 1;
    bd = randi(365, n, 10000);
    p_val = sum(arrayfun(@(c) length(unique(bd(:,c))) < n, 1:10000)) / 10000;
end
fprintf('Task 2.4(b) - Smallest n for P(birthday match) > 0.9: %d\n', n);

%% 5. Die twice (1 to 6)
d = randi([1,6], 2, N);
A = sum(d) == 9;
B = mod(d(2,:), 2) == 0;
C = (d(1,:) == 5) | (d(2,:) == 5);
D = (d(1,:) ~= 1) & (d(2,:) ~= 1);
fprintf('\nTask 2.5(a) - Sim. P(A)=%.4f, P(B)=%.4f, P(C)=%.4f, P(D)=%.4f\n', sum(A)/N, sum(B)/N, sum(C)/N, sum(D)/N);
% (b) Theor A and B. P(A): (3,6),(4,5),(5,4),(6,3) = 4/36 = 1/9. P(B) = 1/2.
% P(A and B): (3,6), (5,4) = 2/36 = 1/18.
% P(A)*P(B) = (1/9)*(1/2) = 1/18. They are independent.
fprintf('Task 2.5(b) - P(A and B) = P(A)*P(B) (1/18). Sim -> Independent.\n');
% (c) Theor C and D. P(C) = 11/36. P(D) = 25/36.
% P(C and D): C but neither is 1 -> 9/36. 
% P(C)*P(D) = 11/36 * 25/36 = 275/1296 != 9/36 (324/1296). NOT independent.
fprintf('Task 2.5(c) - P(C and D)=9/36 != P(C)*P(D)=275/1296. NOT independent.\n');

%% 6. Wireless Link Bayes
P_N = 0.98; P_I = 0.02;
P_E_N = 0.001; P_E_I = 0.1;
% (a) P(Error)
P_E = P_E_N * P_N + P_E_I * P_I;
fprintf('\nTask 2.6(a) - Theor P(Error): %.6f\n', P_E);
% (b) P(Normal|Error) and P(Interf|Error)
P_N_E = (P_E_N * P_N) / P_E;
P_I_E = (P_E_I * P_I) / P_E;
fprintf('Task 2.6(b) - Theor P(Normal|Error): %.6f | P(Interf|Error): %.6f\n', P_N_E, P_I_E);

%% 7. (Optional) Programmers Bayes
nA = 20; nB = 30; nC = 50;
eA = 0.01; eB = 0.05; eC = 0.001;
total_progs = nA + nB + nC;
P_A = nA/total_progs; P_B = nB/total_progs; P_C = nC/total_progs;
P_Err = P_A*eA + P_B*eB + P_C*eC;
P_C_Err = (P_C * eC) / P_Err;
P_A_Err = (P_A * eA) / P_Err;
P_B_Err = (P_B * eB) / P_Err;
fprintf('\nTask 2.7(a) - Theor P(Carlos | Error): %.6f\n', P_C_Err);
% Most likely
[~, idx] = max([P_A_Err, P_B_Err, P_C_Err]);
names = {'Andre', 'Bruno', 'Carlos'};
fprintf('Task 2.7(b) - Most likely programmer: %s\n', names{idx});
