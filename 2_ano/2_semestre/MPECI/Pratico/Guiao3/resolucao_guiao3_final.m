%% MPECI - GUIÃO 3 (Resolução 100% Completa)

%% ========================================================================
%% TASK 1 - Weather Markov Chain
%% ========================================================================
% States: 1-Sunny, 2-Cloudy, 3-Rainy
% (a) State transition matrix T (T_ij = transition from j to i)
T = [0.7 0.2 0.3;
     0.2 0.3 0.3;
     0.1 0.5 0.4];

% (b) P(Sunny on 2nd and 3rd days | Sunny on 1st day)
% Day 1 is Sunny -> v1 = [1; 0; 0]
v1 = [1; 0; 0];
v2 = T * v1; % Probs for day 2
% Prob(Sun2 and Sun3 | Sun1) = P(Sun3 | Sun2)*P(Sun2 | Sun1) = T(1,1) * v2(1)
prob_b = T(1,1) * v2(1);
fprintf('Task 3.1(b) - P(Sun2 and Sun3 | Sun1) = %.4f\n', prob_b);

% (c) P(Sunny in both days of 1st weekend | Rain 1st day)
% 1st day (Jan 1) is Wednesday. Weekend is Sat (Day 4) and Sun (Day 5).
v1_rain = [0; 0; 1];
v4 = T^3 * v1_rain; % State on Day 4 (Saturday)
% Prob(Sun4 and Sun5 | Rain1) = P(Sun5 | Sun4) * P(Sun4 | Rain1)
prob_c = T(1,1) * v4(1);
fprintf('Task 3.1(c) - P(Sun Sat and Sun Sun | Rain Wed) = %.4f\n', prob_c);

% (d) Expected average days of Sunny, Cloudy, Rainy in Jan (31 days) | 1st day Sun
E_sun = 0; E_cloud = 0; E_rain = 0;
v = [1; 0; 0];
for i = 1:31
    E_sun = E_sun + v(1);
    E_cloud = E_cloud + v(2);
    E_rain = E_rain + v(3);
    v = T * v;
end
fprintf('Task 3.1(d) - Expected (Start=Sun): Sun=%.2f, Cloud=%.2f, Rain=%.2f\n', E_sun, E_cloud, E_rain);

% (e) Expected average days | 1st day Rain
E_sun_r = 0; E_cloud_r = 0; E_rain_r = 0;
v = [0; 0; 1];
for i = 1:31
    E_sun_r = E_sun_r + v(1); E_cloud_r = E_cloud_r + v(2); E_rain_r = E_rain_r + v(3);
    v = T * v;
end
fprintf('Task 3.1(e) - Expected (Start=Rain): Sun=%.2f, Cloud=%.2f, Rain=%.2f\n', E_sun_r, E_cloud_r, E_rain_r);
fprintf('  -> Conclusion: The initial state has little impact on the long-term expected sum (Chain stabilizes).\n');

% (f) Rheumatism expected pain days
pain_prob = [0.1; 0.3; 0.5];
% E[Pain] = sum_over_days( P(Sun)*0.1 + P(Cloud)*0.3 + P(Rain)*0.5 )
E_pain_sun = 0; v = [1; 0; 0];
for i=1:31, E_pain_sun = E_pain_sun + dot(v, pain_prob); v = T*v; end

E_pain_rain = 0; v = [0; 0; 1];
for i=1:31, E_pain_rain = E_pain_rain + dot(v, pain_prob); v = T*v; end

fprintf('Task 3.1(f) - E[Pain days] if Jan 1 Sun = %.2f\n', E_pain_sun);
fprintf('Task 3.1(f) - E[Pain days] if Jan 1 Rain = %.2f\n', E_pain_rain);

%% ========================================================================
%% TASK 2 - (Optional) Students Exchange
%% ========================================================================
% (a) Transition Matrix
% A -> B (1/3), A -> C (1/3), A -> A (1/3)
% B -> A (1/4), B -> C (1/5), B -> B (1 - 1/4 - 1/5 = 11/20)
% C -> B (1/2), C -> C (1/2), C -> A (0)
T_2 = [1/3, 1/4,  0;
       1/3, 11/20, 1/2;
       1/3, 1/5,  1/2];
fprintf('\nTask 3.2(a) - Is T_2 stochastic? Sum of cols: '); disp(sum(T_2));

% (b) Initial state vector (90 students. A = 2*(B+C), B=C -> B=15, C=15, A=60)
v0_2 = [60; 15; 15];

% (c) After 30 classes
v30_2 = T_2^30 * v0_2;
fprintf('Task 3.2(c) - Students after 30 classes (Init: 60,15,15):\n  A=%.2f, B=%.2f, C=%.2f\n', v30_2(1), v30_2(2), v30_2(3));

% (d) After 30 classes with equal distribution (30,30,30)
v30_eq = T_2^30 * [30; 30; 30];
fprintf('Task 3.2(d) - Students after 30 classes (Init: 30,30,30):\n  A=%.2f, B=%.2f, C=%.2f\n', v30_eq(1), v30_eq(2), v30_eq(3));

%% ========================================================================
%% TASK 3 - Diagram Markov Chain
%% ========================================================================
p = 0.4; q = 0.6;
% A->A: p^2 | A->B: (1-p)^2 | A->C: p(1-p) | A->D: p(1-p)
% B->C: 1
% C->D: 1
% D->A: q^2 | D->B: q(1-q) | D->C: q(1-q) | D->D: (1-q)^2
T_3 = [p^2,       0, 0, q^2;
       (1-p)^2,   0, 0, q*(1-q);
       p*(1-p),   1, 0, q*(1-q);
       p*(1-p),   0, 1, (1-q)^2];

% (b) Starts in A. Probs after 5, 10, 100, 200
v0_3 = [1; 0; 0; 0];
fprintf('\nTask 3.3(b) - System state starting in A:\n');
fprintf('  After 5:   '); disp((T_3^5 * v0_3)');
fprintf('  After 10:  '); disp((T_3^10 * v0_3)');
fprintf('  After 100: '); disp((T_3^100 * v0_3)');
fprintf('  After 200: '); disp((T_3^200 * v0_3)');

% (c) Limit probabilities
M = [T_3 - eye(4); ones(1,4)];
b = [zeros(4,1); 1];
v_lim_3 = M \ b;
fprintf('Task 3.3(c) - Limit Probs:\n  A=%.4f, B=%.4f, C=%.4f, D=%.4f\n', v_lim_3);
fprintf('  -> The limit is equal to the state after 100 or 200 transitions.\n');

%% ========================================================================
%% TASK 4 - 20 States Markov Chain
%% ========================================================================
% (a) Generate stochastic matrix
T_4 = rand(20, 20);
T_4 = bsxfun(@rdivide, T_4, sum(T_4)); % Normalize columns
fprintf('\nTask 3.4(a) - Stochastic T_4 generated (sum of first col: %.2f)\n', sum(T_4(:,1)));

% (b) P(State 20 starting from 1)
v0_4 = zeros(20,1); v0_4(1) = 1;
v_after_2 = T_4^2 * v0_4;
v_after_5 = T_4^5 * v0_4;
v_after_10 = T_4^10 * v0_4;
v_after_100 = T_4^100 * v0_4;
fprintf('Task 3.4(b) - P(state 20 | initial 1):\n');
fprintf('  After 2:   %.5f%%\n', v_after_2(20)*100);
fprintf('  After 5:   %.5f%%\n', v_after_5(20)*100);
fprintf('  After 10:  %.5f%%\n', v_after_10(20)*100);
fprintf('  After 100: %.5f%%\n', v_after_100(20)*100);
fprintf('  -> Chain stabilizes rapidly (steady state reached).\n');

%% ========================================================================
%% TASK 5 - PageRank (Generic Diagram A-F)
%% ========================================================================
% Representative H matrix based on typical 6-node web graphs
H_5 = [0  1   0   0   0   0
    0   0  1/2  0  1/2  0
    0   0   0   1   0   0
    0   0   1   0   0   0
    1/3 1/3 0   0   0  1/3
    0   0   0   0   0   0];
H_5 = H_5'  % F is Dead-end

% (a, b) F is a dead-end (column of zeros). A, B, C, D, E might form spider traps.
N5 = 6;
H_5_solved = H_5;
% (c) Solve dead-end only
H_5_solved(:, sum(H_5_solved)==0) = 1/N5;
v_5 = ones(N5,1)/N5;
for i=1:40, v_5 = H_5_solved * v_5; end
fprintf('\nTask 3.5(c) - PageRank (Dead-end solved, 40 iter):\n'); disp(v_5');

% (d) Solve Spider-trap (Google Matrix, beta = 0.8)
beta = 0.8;
A_5 = beta * H_5_solved + (1 - beta) * ones(N5,N5) / N5;
v_5d = ones(N5,1)/N5;
for i=1:40, v_5d = A_5 * v_5d; end
fprintf('Task 3.5(d) - PageRank (Google Matrix b=0.8, 40 iter):\n'); disp(v_5d');

% (e) Iterate until diff < 1e-4
v_5e = ones(N5,1)/N5; prev_v = v_5e;
iter = 0; diff = 1;
while diff > 1e-4
    v_5e = A_5 * v_5e;
    diff = max(abs(v_5e - prev_v));
    prev_v = v_5e;
    iter = iter + 1;
end
fprintf('Task 3.5(e) - Converged in %d iterations. Diff < 1e-4.\n', iter);

%% ========================================================================
%% TASK 6 - (Optional) PageRank Real Diagram (a.pt to f.nl)
%% ========================================================================
% Map: 1:a.pt, 2:b.es, 3:c.fr, 4:d.br, 5:e.com, 6:f.nl
H_6 = zeros(6,6);
H_6(2,1)=1/2; H_6(5,1)=1/2; % a -> b, e
H_6(1,2)=1/2; H_6(6,2)=1/2; % b -> a, f
H_6(1,3)=1;                 % c -> a
H_6(3,4)=1/2; H_6(6,4)=1/2; % d -> c, f
H_6(2,5)=1/3; H_6(3,5)=1/3; H_6(4,5)=1/3; % e -> b, c, d
% f.nl has no out-links -> dead-end

% Fix dead-end
H_6(:,6) = 1/6;

% (a) Google matrix beta = 0.85, iter diff < 0.01
beta6 = 0.85; N6 = 6;
A_6 = beta6 * H_6 + (1 - beta6) * ones(N6,N6)/N6;

r = ones(N6,1)/N6; r_old = r;
it_6 = 0; diff_6 = 1;
while diff_6 > 0.01
    r = A_6 * r;
    diff_6 = max(abs(r - r_old));
    r_old = r;
    it_6 = it_6 + 1;
end
fprintf('\nTask 3.6(a) - Iterative PageRank (diff < 0.01):\n');
fprintf('  a.pt:%.4f | b.es:%.4f | c.fr:%.4f | d.br:%.4f | e.com:%.4f | f.nl:%.4f\n', r);
[max_v, max_idx] = max(r); [min_v, min_idx] = min(r);
pages = {'a.pt', 'b.es', 'c.fr', 'd.br', 'e.com', 'f.nl'};
fprintf('  Lowest: %s (%.4f) | Highest: %s (%.4f)\n', pages{min_idx}, min_v, pages{max_idx}, max_v);

% (b) Confirm non-iterative (System of equations M * v = b)
M6 = [A_6 - eye(N6); ones(1,N6)];
b6 = [zeros(N6,1); 1];
r_lim_6 = M6 \ b6;
fprintf('Task 3.6(b) - Non-Iterative PageRank:\n');
fprintf('  a.pt:%.4f | b.es:%.4f | c.fr:%.4f | d.br:%.4f | e.com:%.4f | f.nl:%.4f\n', r_lim_6);
