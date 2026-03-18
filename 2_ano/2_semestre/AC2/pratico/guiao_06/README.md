# Guia Prático N.º 6 - Arquitetura de Computadores II (AC2)
## Resolução Completa e Detalhada

Este repositório contém a resolução 100% funcional do Guia Prático N.º 6, focado na utilização do **Conversor Analógico-Digital (ADC)** do microcontrolador PIC32.

---

### 1. Conceitos Fundamentais

#### O que é um ADC?
Um conversor Analógico-Digital transforma uma tensão contínua (ex: 0V a 3.3V) num valor numérico discreto. No PIC32, o ADC tem **10 bits** de resolução, o que significa que divide a gama de tensão em $2^{10} = 1024$ níveis (de 0 a 1023).

- **0V** corresponde a **0x000** (0 decimal)
- **3.3V** corresponde a **0x3FF** (1023 decimal)

#### Cálculo da Tensão (LSB)
O **LSB (Least Significant Bit)** é o menor incremento de tensão detetável:
$$LSB = \frac{V_{max} - V_{min}}{2^n - 1} = \frac{3.3V}{1023} \approx 3.22 \text{ mV}$$

#### Técnica de Polling
Neste guião, usamos **polling** para detetar o fim da conversão. Isto significa que o processador fica num ciclo `while` à espera que o bit `AD1IF` (flag de interrupção) passe a '1', indicando que o resultado está pronto no buffer.

---

### 2. Configuração do Módulo ADC (Passo-a-Passo)

Para configurar o ADC (ex: para o pino RB4/AN4), seguimos esta ordem:

1.  **TRISBbits.TRISB4 = 1;** -> Desliga o driver de saída digital.
2.  **AD1PCFGbits.PCFG4 = 0;** -> Configura o pino como entrada analógica.
3.  **AD1CON1bits.SSRC = 7;** -> Configuração de "Internal Counter" para terminar a amostragem e iniciar a conversão automaticamente.
4.  **AD1CON1bits.CLRASAM = 1;** -> Para a conversão após a primeira interrupção (modo manual/semi-automático).
5.  **AD1CON3bits.SAMC = 16;** -> Tempo de amostragem (16 TAD).
6.  **AD1CON2bits.SMPI = N-1;** -> Define quantas amostras consecutivas são feitas (ex: 3 para 4 amostras).
7.  **AD1CHSbits.CH0SA = 4;** -> Seleciona o canal de entrada (AN4).
8.  **AD1CON1bits.ON = 1;** -> Ativa o módulo ADC (deve ser o último passo).

---

### 3. Guia de Exercícios

#### Exercício 1 & 2
Lê um valor do potenciómetro ligado a AN4 e imprime o valor em hexadecimal com 3 dígitos. No exercício 2, usamos o pino RD11 para medir o tempo de conversão (o pino fica a '1' enquanto o ADC trabalha).

#### Exercício 3 & 4
O ADC pode fazer várias conversões seguidas e guardá-las nos registos `ADC1BUF0` até `ADC1BUFF` (16 posições). O bit `SMPI` controla quantas são feitas.

#### Exercício 5
Cálculo da **média** de 4 amostras para reduzir ruído e conversão para **tensão em vírgula fixa** (com uma casa decimal).
Fórmula de arredondamento: $V = \frac{VAL\_AD \times 33 + 511}{1023}$
*(Multiplicar por 33 permite obter o valor em décimas de Volt sem usar floats, que são lentos)*.

#### Exercício 6 (Final)
Integração com displays de 7 segmentos:
- **Amostragem:** 5 Hz (cada 200ms lê o ADC).
- **Refrescamento dos Displays:** 100 Hz (cada 10ms muda o display ativo).
- O valor da tensão é convertido para BCD e enviado para os displays.

---

### Como Compilar
Estes ficheiros foram desenhados para o ambiente do curso (p32mx795f512l), utilizando a biblioteca `detpic32.h`.

**Dica:** Se o valor lido não mudar, verifique se está a fazer o reset da flag `IFS1bits.AD1IF = 0;` após a leitura.
