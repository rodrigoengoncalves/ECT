%% MPECI - GUIÃO 2 (Resolução 100% Completa)

N = 1e5; % Número de simulações genérico

%% 1. Random Variable X (Die roll)
X = 1:6;
pmf_1 = ones(1,6)/6;
figure('Name', 'Task 2.1 - PMF and CDF of a Die');
subplot(2,1,1); stem(X, pmf_1); title('PMF (Probability Mass Function)');
xlabel('x'); ylabel('P(X=x)');
subplot(2,1,2); stairs([0 X 7], [0 cumsum(pmf_1) 1]); title('CDF (Cumulative Distribution Function)');
xlabel('x'); ylabel('P(X<=x)');

%% 2. Banknotes Box (90 of 5, 9 of 10, 1 of 100)
% (a) Sample space S = {taking any of the 100 banknotes}. P(any specific banknote) = 1/100.
% (b) RV X = value of the banknote.
X2 = [5, 10, 100];
pmf_2 = [90/100, 9/100, 1/100];
fprintf('Task 2.2(b) - PMF: P(X=5)=%.2f, P(X=10)=%.2f, P(X=100)=%.2f\n', pmf_2);
% (c) CDF
figure('Name', 'Task 2.2 - CDF Banknotes');
stairs([0 X2 110], [0 cumsum(pmf_2) 1]); title('CDF of Banknote Values');
xlabel('Value (euros)'); ylabel('P(X<=x)');

%% 3. 4 Balanced Coins (X = number of heads)
n = 4; p = 0.5; X3 = 0:4;
% (a) Estimate PMF by simulation
sim_tosses = sum(rand(n, N) < p);
sim_pmf_3 = arrayfun(@(k) sum(sim_tosses==k)/N, X3);
fprintf('\nTask 2.3(a) - Sim. PMF: '); disp(sim_pmf_3);
% (b) Estimate Expected Value, Variance, Std Dev
sim_E = mean(sim_tosses);
sim_Var = var(sim_tosses);
sim_Std = std(sim_tosses);
fprintf('Task 2.3(b) - Sim: E[X]=%.4f, Var[X]=%.4f, Std[X]=%.4f\n', sim_E, sim_Var, sim_Std);
% (c) X follows a Binomial Distribution. Expression: P(X=k) = nchoosek(n,k) * p^k * (1-p)^(n-k)
% (d) Calculate theor PMF
theor_pmf_3 = arrayfun(@(k) nchoosek(n,k)*p^k*(1-p)^(n-k), X3);
fprintf('Task 2.3(d) - Theor PMF: '); disp(theor_pmf_3);
% (e) Theor E[X] = n*p, Var[X] = n*p*(1-p)
theor_E = n*p; theor_Var = n*p*(1-p);
fprintf('Task 2.3(e) - Theor: E[X]=%.4f, Var[X]=%.4f\n', theor_E, theor_Var);
% (f) Probabilities based on theoretical PMF
prob_i = sum(theor_pmf_3(3:5)); % X=2,3,4
prob_ii = sum(theor_pmf_3(1:2)); % X=0,1
prob_iii = sum(theor_pmf_3(2:4)); % X=1,2,3
fprintf('Task 2.3(f) - P(>=2): %.4f | P(<=1): %.4f | P(between 1 and 3): %.4f\n', prob_i, prob_ii, prob_iii);

%% 4. (Optional) Manufacturing process (30% defective, 5 parts)
n4 = 5; p4 = 0.3; X4 = 0:5;
% (a) Estimate by simulation
sim_parts = sum(rand(n4, N) < p4);
sim_pmf_4 = arrayfun(@(k) sum(sim_parts==k)/N, X4);
fprintf('\nTask 2.4(a.i) - Sim PMF: '); disp(sim_pmf_4);
figure('Name', 'Task 2.4 - CDF Defective Parts');
stairs([0 X4 6], [0 cumsum(sim_pmf_4) 1]); title('CDF of Defective Parts (Simulated)');
fprintf('Task 2.4(a.iii) - Sim. P(at most 2 def): %.4f\n', sum(sim_pmf_4(1:3)));
% (b) Compute theoretically
theor_pmf_4 = arrayfun(@(k) nchoosek(n4,k)*p4^k*(1-p4)^(n4-k), X4);
fprintf('Task 2.4(b.ii) - Theor P(at most 2 def): %.4f\n', sum(theor_pmf_4(1:3)));

%% 5. (Optional) Airplane engines (Binomial)
% Plane crashes if > half of engines fail.
p_fail = logspace(-3, log10(0.5), 100);
P_crash_2 = p_fail.^2; % 2 engines: crashes if 2 fail
P_crash_4 = arrayfun(@(p) sum(arrayfun(@(k) nchoosek(4,k)*p^k*(1-p)^(4-k), 3:4)), p_fail); % 4 engines: crashes if 3 or 4 fail
figure('Name', 'Task 2.5 - Airplane Crash Prob');
loglog(p_fail, P_crash_2, p_fail, P_crash_4);
legend('2 engines', '4 engines'); title('Crashing Probability vs P(engine fail)');
xlabel('P(Engine Fail)'); ylabel('P(Crash)');

%% 6. Binomial vs Poisson (BER = 10^-5)
p6 = 1e-5;
% (a) 100 Bytes (800 bits) without errors
n6a = 800; lambda_a = n6a * p6;
p0_bin_a = (1-p6)^n6a;
p0_poi_a = exp(-lambda_a);
fprintf('\nTask 2.6(a) - P(0 err in 100B): Binomial=%.6f, Poisson=%.6f\n', p0_bin_a, p0_poi_a);
% (b) 1000 Bytes (8000 bits) >= 2 errors
n6b = 8000; lambda_b = n6b * p6;
p_lt2_bin = (1-p6)^n6b + n6b*p6*(1-p6)^(n6b-1);
p_lt2_poi = exp(-lambda_b) * (1 + lambda_b);
fprintf('Task 2.6(b) - P(>=2 err in 1000B): Binomial=%.6f, Poisson=%.6f\n', 1 - p_lt2_bin, 1 - p_lt2_poi);

%% 7. Email Server (Poisson)
% Average 5 messages/sec
% (a) < 10 messages in 2 seconds (lambda = 10)
lambda_7a = 10;
theor_7a = sum(arrayfun(@(k) exp(-lambda_7a)*lambda_7a^k/factorial(k), 0:9));
sim_7a = sum(poissrnd(lambda_7a, 1, N) < 10) / N;
fprintf('\nTask 2.7(a) - P(<10 in 2s): Theor=%.4f, Sim=%.4f\n', theor_7a, sim_7a);
% (b) > 30 messages in 5 seconds (lambda = 25)
lambda_7b = 25;
theor_7b = 1 - sum(arrayfun(@(k) exp(-lambda_7b)*lambda_7b^k/factorial(k), 0:30));
sim_7b = sum(poissrnd(lambda_7b, 1, N) > 30) / N;
fprintf('Task 2.7(b) - P(>30 in 5s): Theor=%.4f, Sim=%.4f\n', theor_7b, sim_7b);

%% 8. Exponential lambda=1
lambda8 = 1;
figure('Name', 'Task 2.8 - Exponential Distribution');
x_vals = 0:0.1:10;
plot(x_vals, exppdf(x_vals, 1/lambda8), 'LineWidth', 2); hold on;
hist_data = exprnd(1/lambda8, 1, 1e5); % 10^5 random values
histogram(hist_data, 100, 'Normalization', 'pdf');
title('Exponential Distribution PDF vs Histogram');

%% 9. Exponential lambda=0.2 (Memoryless)
lambda9 = 0.2;
gen9 = exprnd(1/lambda9, 1, 1e5);
% (a) Average
fprintf('\nTask 2.9(a) - Sim Mean=%.4f | Theor Mean=%.4f\n', mean(gen9), 1/lambda9);
% (b) Memoryless property: P(X > s+t | X > t) = P(X > s)
s = 2; t = 3;
P_gt_s = sum(gen9 > s) / 1e5;
P_gt_s_plus_t_given_gt_t = sum(gen9 > (s+t)) / sum(gen9 > t);
fprintf('Task 2.9(b) - P(X>2)=%.4f | P(X>5 | X>3)=%.4f (Matches!)\n', P_gt_s, P_gt_s_plus_t_given_gt_t);

%% 10. Exponential Minimum X and Y
lx = 0.4; ly = 0.1;
X10 = exprnd(1/lx, 1, 1e5);
Y10 = exprnd(1/ly, 1, 1e5);
sim_10 = sum(X10 < Y10) / 1e5;
theor_10 = lx / (lx + ly);
fprintf('\nTask 2.10 - Sim P(X<Y)=%.4f | Theor lx/(lx+ly)=%.4f\n', sim_10, theor_10);

%% 11. (Optional) Typographical errors
% lambda = 0.02 per page, 100 pages -> lambda_total = 2
lambda11 = 2;
p_11 = exp(-lambda11) * (1 + lambda11); % P(X=0) + P(X=1)
fprintf('Task 2.11 - Prob at most 1 typo in 100 pages: %.4f\n', p_11);

%% 12. Gaussian / Normal (Students in course)
mu12 = 100; sig12 = 10;
% (a) Simulation
sim_norm = randn(1, 1e5) * sig12 + mu12;
sim_n5 = sum(sim_norm <= 5 * 20) / 1e5;
sim_n6 = sum(sim_norm <= 6 * 20) / 1e5;
sim_n7 = sum(sim_norm <= 7 * 20) / 1e5;
% (b) Theoretical
theo_n5 = normcdf(5 * 20, mu12, sig12);
theo_n6 = normcdf(6 * 20, mu12, sig12);
theo_n7 = normcdf(7 * 20, mu12, sig12);
fprintf('\nTask 2.12 - Prob classes enough:\n');
fprintf('  n=5 (cap 100): Sim=%.4f, Theor=%.4f\n', sim_n5, theo_n5);
fprintf('  n=6 (cap 120): Sim=%.4f, Theor=%.4f\n', sim_n6, theo_n6);
fprintf('  n=7 (cap 140): Sim=%.4f, Theor=%.4f\n', sim_n7, theo_n7);

%% 13. Cookies (i.i.d.)
mu13 = 20; var13 = 9; n13 = 100;
% (a) Compute theoretical E[Sn] and Var[Sn]
E_Sn = n13 * mu13;
Var_Sn = n13 * var13;
fprintf('\nTask 2.13(a) - E[S100]=%.2f, Var[S100]=%.2f\n', E_Sn, Var_Sn);
% (b) Upper bound P(X >= 30) using Markov (Mean only)
fprintf('Task 2.13(b) - Markov Bound P(X>=30) <= E[X]/30 = %.4f\n', mu13/30);
% (c) Bound P(|X-20| > 10) using Chebyshev (Mean and Var)
fprintf('Task 2.13(c) - Chebyshev Bound P(|X-20|>10) <= Var/10^2 = %.4f\n', var13/100);
% (d) Estimate P(1970 < S100 < 2030) using CLT (Normcdf)
p_13d = normcdf(2030, E_Sn, sqrt(Var_Sn)) - normcdf(1970, E_Sn, sqrt(Var_Sn));
fprintf('Task 2.13(d) - P(1970 < S100 < 2030) = %.4f\n', p_13d);
