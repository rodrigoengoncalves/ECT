#include <detpic32.h>

/*
 * Exercício 5:
 * 1. Configurar ADC para 4 amostras (SMPI = 3).
 * 2. Calcular a média das 4 amostras.
 * 3. Converter a média para tensão usando a fórmula de vírgula fixa.
 *    V = (VAL_AD * 33 + 511) / 1023
 */

int main(void) {
    // 1. Configurar porto RB4 como entrada analógica (AN4)
    TRISBbits.TRISB4 = 1;     
    AD1PCFGbits.PCFG4 = 0;    

    // 2. Configurar módulo ADC
    AD1CON1bits.SSRC = 7;     
    AD1CON1bits.CLRASAM = 1;  
    AD1CON3bits.SAMC = 16;    
    AD1CON2bits.SMPI = 3;     // 4 amostras consecutivas
    AD1CHSbits.CH0SA = 4;     
    AD1CON1bits.ON = 1;       

    while(1) {
        // Iniciar amostragem e conversão
        AD1CON1bits.ASAM = 1; 

        // Esperar pelo fim das 4 conversões
        while(IFS1bits.AD1IF == 0); 

        // Ler as 4 amostras e calcular a média
        int *p = (int *)(&ADC1BUF0);
        int i, soma = 0;
        for(i = 0; i < 4; i++) {
            soma += p[i*4];
        }
        int media = soma / 4;

        // Calcular tensão (V) em décimas de Volt
        // Ex: 33 corresponde a 3.3V
        int V = (media * 33 + 511) / 1023;

        // Imprimir valor médio da ADC e valor da tensão
        printStr("ADC: ");
        printInt(media, 10 | 4 << 16);
        printStr(" | Tensão: ");
        // Imprime a parte inteira (V / 10) e a decimal (V % 10)
        printInt(V / 10, 10);
        putChar('.');
        printInt(V % 10, 10);
        printStr(" V\n");

        // Reset do bit AD1IF
        IFS1bits.AD1IF = 0;

        // Atraso de 500ms
        resetCoreTimer();
        while(readCoreTimer() < 10000000); 
    }
    return 0;
}
