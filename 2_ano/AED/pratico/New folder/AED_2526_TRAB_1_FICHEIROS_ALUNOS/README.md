# AED 2025/2026 - Trabalho 1: O TAD imageRGB

**Departamento de Electrónica, Telecomunicações e Informática** **Universidade de Aveiro** **Unidade Curricular:** Algoritmos e Estruturas de Dados (AED)

---

## 👥 Autores

> **Nota:** Preencher com os dados do grupo.

* **Nome:** Rodrigo Gonçalves  
  **NMec:** 124750
* **Nome:** Rodrigo Silva  
  **NMec:** 125171

## 🚀 Funcionalidades Implementadas

As funções foram desenvolvidas no ficheiro `imageRGB.c` e incluem:

### 1. Funções Básicas e de Comparação
* [cite_start]**`ImageCopy`**: Criação de uma cópia integral (*deep copy*) de uma imagem existente[cite: 11].
* [cite_start]**`ImageIsEqual`**: Verificação se duas imagens são visualmente idênticas, comparando as cores reais obtidas através da LUT e não apenas os índices[cite: 11, 14].

### 2. Transformações Geométricas
* [cite_start]**`ImageRotate90CW`**: Rotação da imagem 90º no sentido dos ponteiros do relógio[cite: 12].
* [cite_start]**`ImageRotate180CW`**: Rotação da imagem 180º[cite: 12].

### 3. Segmentação e Preenchimento (Flood Fill)
Implementação de algoritmos de preenchimento de regiões (*Flood Fill*) para identificar áreas conexas da mesma cor. Foram desenvolvidas três variantes para análise de complexidade e desempenho:
* [cite_start]**`ImageRegionFillingRecursive`**: Versão recursiva do algoritmo[cite: 19].
* [cite_start]**`ImageRegionFillingWithSTACK`**: Versão iterativa utilizando uma Pilha (Stack/LIFO)[cite: 22].
* [cite_start]**`ImageRegionFillingWithQUEUE`**: Versão iterativa utilizando uma Fila (Queue/FIFO)[cite: 21].
* [cite_start]**`ImageSegmentation`**: Função de alto nível que percorre a imagem e identifica todas as regiões distintas, pintando-as com cores diferentes[cite: 23, 39].

---

## 🛠️ Instruções de Compilação e Execução

Este projeto utiliza um `Makefile` para facilitar a compilação. Seguem-se os comandos necessários para limpar, compilar e testar o projeto no ambiente Windows (MinGW).

### 1. Limpar ficheiros de compilações anteriores
Remove os ficheiros objeto (`.o`) e o executável antigo para garantir uma compilação limpa.

```bash
mingw32-make clean
````
### 2. Compilar o projeto
Compila o código fonte, incluindo o módulo `imageRGB.c` e as dependências, gerando o executável.

```bash
mingw32-make
````
### 3. Executar os testes
Executa o programa de testes que valida as funções implementadas e gera os outputs de instrumentação (contagem de operações) necessários para o relatório.
```bash
./imageRGBTest
````
###  📂 Estrutura dos Ficheiros
`imageRGB.c`: Ficheiro principal com a implementação das funções requeridas.

`imageRGB.h`: Interface do TAD (não alterado).

`imageRGBTest.c`: Código de teste e validação.

`PixelCoordsQueue.* `/ `PixelCoordsStack.*`: Estruturas auxiliares para as versões iterativas do Flood Fill.

`instrumentation.*`: Módulo para contagem de operações e análise de complexidade.
