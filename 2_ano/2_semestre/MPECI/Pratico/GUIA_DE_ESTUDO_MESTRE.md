# 🎓 GUIA DE ESTUDO MESTRE: Métodos Probabilísticos (MPECI)

Este guia foi desenhado para te levar do zero à excelência. Segue cada secção, analisa os exemplos e resolve os exercícios de treino no final.

---

## 📘 Módulo 1: Fundamentos e Simulação (Guião 1)

### 1.1 O que é a Probabilidade?
É a medida da incerteza. Vai de 0 (impossível) a 1 (certo).
- **Simulação em Matlab:** Usamos `rand(n, N)` para gerar números entre 0 e 1. Se queremos simular uma moeda justa (p=0.5), dizemos que é "Cara" se o valor for `< 0.5`.

### 1.2 Probabilidade Condicionada e Independência
- **Fórmula de Bayes:** $P(A|B) = \frac{P(B|A)P(A)}{P(B)}$. Serve para "inverter" a probabilidade. Ex: Se sei a prob. de ter febre dado que tenho COVID, Bayes ajuda-me a saber a prob. de ter COVID dado que tenho febre.
- **Independência:** Dois eventos são independentes se $P(A \cap B) = P(A) \times P(B)$. Ou seja, o facto de A acontecer não muda a probabilidade de B acontecer.

#### 💡 Exemplo Prático
Num teste de diagnóstico, 1% da população tem a doença. O teste acerta 99% das vezes se a pessoa estiver doente, mas dá 5% de falsos positivos. Se o teu teste deu positivo, qual a prob. de estares mesmo doente? (Usa Bayes!).

#### 📝 Exercícios de Treino
1. Simula em Matlab a probabilidade de lançar 2 dados e a soma ser 7. (Dica: use `randi([1, 6], 2, N)`).
2. Numa fábrica, a Máquina A produz 60% das peças (1% defeito) e a Máquina B produz 40% (2% defeito). Se escolheres uma peça ao calhas e for defeituosa, qual a prob. de ter vindo da Máquina A?

---

## 📗 Módulo 2: Variáveis Aleatórias e Distribuições (Guião 2)

### 2.1 PMF e CDF
- **PMF (Prob. Mass Function):** $P(X=x)$. É o "gráfico de barras" das probabilidades de cada valor.
- **CDF (Cumulative Distribution Function):** $P(X \le x)$. É a probabilidade acumulada (vai somando até chegar a 1).

### 2.2 As "Big Four" Distribuições
1. **Binomial:** $n$ tentativas, sucesso com prob $p$. (Ex: Lançar 10 moedas).
2. **Poisson:** Eventos que ocorrem num intervalo de tempo/espaço. (Ex: Número de emails por hora). $\lambda = n \times p$.
3. **Exponencial:** Tempo entre eventos de Poisson. (Ex: Tempo até o próximo email chegar).
4. **Normal (Gaussiana):** A "curva em sino". Quase tudo na natureza segue isto.

### 2.3 Média e Variância
- **Média (Esperança) $E[X]$:** O valor "esperado" a longo prazo.
- **Variância $Var[X]$:** O quanto os valores se afastam da média.

#### 💡 Exemplo Prático
Se uma página web recebe em média 5 cliques por minuto (Poisson), a probabilidade de receber 0 cliques é minúscula, mas a de receber exatamente 5 é a mais alta.

#### 📝 Exercícios de Treino
1. Um servidor recebe 10 pedidos/segundo (Poisson). Qual a prob. de receber exatamente 8 pedidos num segundo?
2. A altura dos alunos segue uma Normal com $\mu = 175cm$ e $\sigma = 10cm$. Qual a prob. de um aluno ter mais de 190cm?

---

## 📙 Módulo 3: Cadeias de Markov e PageRank (Guião 3)

### 3.1 Cadeias de Markov
Um sistema que muda de estado baseado apenas no estado atual (sem memória).
- **Matriz de Transição $T$:** $T_{ij}$ é a prob. de ir do estado $j$ para o estado $i$. **Atenção:** No Matlab desta cadeira, as colunas somam 1!
- **Estado Limite:** Para onde o sistema "estabiliza" depois de muito tempo ($v = T \times v$).

### 3.2 PageRank
O algoritmo da Google! Uma página é importante se páginas importantes apontam para ela.
- **Dead-end:** Página sem links (a coluna na matriz H seria tudo 0). Resolvemos pondo $1/N$ em toda a coluna.
- **Spider trap:** Um grupo de páginas que aponta apenas entre si. Resolvemos com o "fator de teletransporte" $\beta$ (Matriz Google).

#### 💡 Exemplo Prático
Prever o tempo: Se hoje está Sol, há 70% de prob. de amanhã ser Sol. Se está Chuva, há 50% de amanhã ser Sol. Isto é uma Cadeia de Markov de 2 estados.

#### 📝 Exercícios de Treino
1. Dada a matriz $T = [0.8, 0.3; 0.2, 0.7]$, calcula o estado limite (o vetor $v$ tal que $Tv=v$ e $v_1+v_2=1$).
2. Explica por que razão o PageRank usa um fator $\beta$ (normalmente 0.85) em vez de usar apenas a matriz de hyperlinks pura.

---

## 🚀 Dicas de Ouro para o Teste
1. **Lê bem o enunciado:** "Pelo menos 2" significa $X \ge 2$, ou seja, $1 - (P(X=0) + P(X=1))$.
2. **Matlab é teu amigo:** No teste, se pedirem para "estimar por simulação", usa sempre um $N$ grande ($10^5$ ou $10^6$).
3. **Distribuições:** Se $n$ for grande e $p$ pequeno, a Binomial aproxima-se da Poisson. Se $n$ for muito grande, aproxima-se da Normal.
4. **Cadeias de Markov:** Garante sempre que a tua matriz de transição tem colunas que somam 1 antes de começares as contas.

---
**Boa sorte! Com este guia e os scripts que preparei, o 20 está ao teu alcance.**
