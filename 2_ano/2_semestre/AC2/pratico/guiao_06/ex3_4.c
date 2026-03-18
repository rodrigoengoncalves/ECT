#include <detpic32.h>

/*
 * Exercício 3 e 4:
 * 1. Configurar ADC para ler até 16 amostras (SMPI = 15).
 * 2. Imprimir todas as posições do buffer ADC1BUFx.
 */

int main(void) {
    // 1. Configurar porto RB4 como entrada analógica (AN4)
    TRISBbits.TRISB4 = 1;     
    AD1PCFGbits.PCFG4 = 0;    

    // 2. Configurar módulo ADC
    AD1CON1bits.SSRC = 7;     
    AD1CON1bits.CLRASAM = 1;  
    AD1CON3bits.SAMC = 16;    
    
    // Exercício 3: SMPI = 15 para 16 conversões
    // Exercício 4: SMPI = 3 para 4 conversões
    AD1CON2bits.SMPI = 15;     
    
    AD1CHSbits.CH0SA = 4;     
    AD1CON1bits.ON = 1;       

    while(1) {
        // Iniciar amostragem e conversão
        AD1CON1bits.ASAM = 1; 

        // Esperar pelo fim de TODAS as conversões
        while(IFS1bits.AD1IF == 0); 

        // Imprimir as 16 posições do buffer
        int *p = (int *)(&ADC1BUF0);
        int i;
        for(i = 0; i < 16; i++) {
            // Imprime cada valor em decimal com 4 dígitos (10 | 4 << 16)
            printInt(p[i*4], 10 | 4 << 16);
            putChar(' ');
        }
        putChar('\n'); // Nova linha entre sequências

        // Reset do bit AD1IF
        IFS1bits.AD1IF = 0;

        // Pequeno atraso para facilitar a leitura no terminal
        resetCoreTimer();
        while(readCoreTimer() < 20000000); // ~1 segundo
    }
    return 0;
}
