%%Ex 1

experiments = rand(3,10000);

tosses = experiments < 0.5;

result = sum(tosses);

successes = result == 2;

probSimulation = sum(successes)/10000;

%a)
N = 1e4; % number of experiments
p = 0.5; % probability of heads
k = 2; % number of heads
n = 3; % number of tosses

tosses = rand(n,N) < p;
successes = sum(tosses) == k;
probSimulation = sum (successes) / N


%%
% Ex 2

%a)
N = 1e4; % number of experiments
p = 0.5; % probability of heads
k = 6; % number of heads
n = 15; % number of tosses

tosses = rand(n,N) < p;
successes = sum(tosses) == k;
probSimulation = sum (successes) / N

%b)

tosses = rand(n,N) < p;
successes = sum(tosses) >= k;
probSimulation = sum (successes) / N


%%
%Ex 3

%a)
ex1 = prob(1e4,0.5,2,3)
ex2 = prob(1e4,0.5,6,15)

function probSimulation = prob(N,p,k,n)
tosses = rand(n,N) < p;
successes = sum(tosses) == k;
probSimulation = sum (successes) / N;
end

%b)

n_tosses_list = [20,40,100];

figure; % Abre uma nova janela para os gráficos

for i = 1:length(n_tosses_list)
    n = n_tosses_list(i);
    
    % Vetor para guardar as probabilidades de k=0 até k=n
    estimated_probs = zeros(1, n+1);
    
    % Calcular probabilidade para cada número possível de caras (k)
    % Nota: Isto é ineficiente computacionalmente mas cumpre o requisito 
    % de usar a função criada.
    for k = 0:n
        estimated_probs(k+1) = prob(1e4, 0.5, n, k);
    end
    
    % Plotting
    subplot(3, 1, i);
    stem(0:n, estimated_probs, 'filled', 'Markersize', 3);
    title(['Est. Probabilities for n = ' num2str(n) ' tosses']);
    xlabel('Number of Heads (k)');
    ylabel('Probability');
    grid on;
    
    % Verificação de sanidade (a soma deve ser aprox 1)
    fprintf('Soma das probs para n=%d: %.4f\n', n, sum(estimated_probs));
end
%%
% Bernoulli experiments
% Data related to problem 1
p = 0.5;
k = 2;
n = 3;
probability = nchoosek(n,k)*p^k*(1-p)^(n-k) % nchoosek(n,k)= n!/(n-k)!/k!

%-------------------------------TASK2--------------------------------------
%% Ex 1

N = 1e4; % number of experiments
p = 0.5; % probability of boy 
k = 1; % number of boys
n = 2; % number of childs
experiments = rand(n,N) < p;

%a)
successes = sum(experiments) >= k;
prob_a = sum(successes)/N

%c)

sucesses = sum(experiments) ==  n;
possibels = sum(experiments) >= 1;
prob_c = sum(sucesses)/sum(possibels)

%d)

sucesses = sum(experiments) ==  n;
possibels = experiments(1,:) == 1;
prob_d = sum(sucesses)/sum(possibels)

%% e)

N = 1e4; % number of experiments
p = 0.5; % probability of boy 
k = 1; % number of boys (min)
n = 5; % number of childs
experiments = rand(n,N) < p;

possibels = sum(experiments) >= k;

sucesses = sum(experiments) == 2;
prob_e = sum(sucesses) / sum(possibels)

%f)

sucesses = sum(experiments) >= 2;
prob_f = sum(sucesses) / sum(possibels)

%% Ex 2

n = 20;     %number of dards 
m = 100;    %number of targets
N = 1e5;    %number of experiments

experiments = randi(m,n,N); %matriz de 20x10000 como numeros random de 1 a 100
contador = 0;

% a)

for i = 1:N 
    if  length(unique(experiments(:,i))) == n   %unique -> remove todos os valores repetidos    lenght == n -> se o tamanho continuar igual foi porque nao houve valores repetidos
        contador = contador + 1;
    end
end 

prob_a = contador/N

% b)

for i = 1:N 
    if  length(unique(experiments(:,i))) < n   %unique -> remove todos os valores repetidos    lenght < n -> se o tamanho for menor foi porque houve valores repetidos 
        contador = contador + 1;
    end
end 

prob_c = contador/N


%% Ex 4

n = 1; %numero de pessoas inicial
m = 365; %numero de dias do ano
N = 1e5; %numero de casos

probabilidade = 0;


while probabilidade <= 0.5 
    n = n + 1;
    experiments = randi (m,n,N);
    count = 0;

    for i = 1:N
        if length(unique(experiments(:,i))) < n
            count = count + 1;
        end 
    end 
    
    probabilidade = count/N;
end 

n = n

%a)