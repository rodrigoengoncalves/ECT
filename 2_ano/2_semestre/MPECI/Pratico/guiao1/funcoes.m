%Funções usadas na aula
% N = number of experiments
% p = probability of heads
% k = number of heads
% n = number of tosses

function probSimulation = prob(N,p,k,n)
tosses = rand(n,N) < p;
successes = sum(tosses) == k;
probSimulation = sum (successes) / N;
end