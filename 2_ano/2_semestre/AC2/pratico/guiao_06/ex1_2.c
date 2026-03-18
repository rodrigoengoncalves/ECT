#include <detpic32.h>

/*
 * Exercício 1 e 2:
 * 1. Configurar RB4 (AN4) como entrada analógica.
 * 2. Realizar 1 conversão (SMPI = 0).
 * 3. Imprimir o valor em hexadecimal (formatado com 3 dígitos).
 * 4. Controlar RD11 para medir tempo de conversão no osciloscópio.
 */

int main(void) {
    // 1. Configurar porto RB4 como entrada analógica (AN4)
    TRISBbits.TRISB4 = 1;     // Desligar driver digital
    AD1PCFGbits.PCFG4 = 0;    // Configurar como analógica

    // 2. Configurar porto RD11 como saída digital
    TRISDbits.TRISD11 = 0;    // Saída digital
    LATDbits.LATD11 = 0;      // Inicialmente a 0

    // 3. Configurar módulo ADC
    AD1CON1bits.SSRC = 7;     // Trigger auto-convert
    AD1CON1bits.CLRASAM = 1;  // Parar após interrupção
    AD1CON3bits.SAMC = 16;    // Tempo amostragem (1 TAD = 100ns)
    AD1CON2bits.SMPI = 0;     // 1 conversão (SMPI = N-1)
    AD1CHSbits.CH0SA = 4;     // Canal AN4
    AD1CON1bits.ON = 1;       // Ativar modulo ADC

    while(1) {
        // Iniciar amostragem e conversão
        AD1CON1bits.ASAM = 1; 

        // Ativar RD11 (Exercício 2) para medir o tempo no osciloscópio
        LATDbits.LATD11 = 1;

        // Esperar pelo fim da conversão (polling)
        while(IFS1bits.AD1IF == 0); 

        // Desativar RD11 após o fim da conversão
        LATDbits.LATD11 = 0;

        // Imprimir valor (ADC1BUF0) em hexadecimal (16 | 3 << 16)
        // 16 -> Base 16 (hex)
        // 3 << 16 -> Campo de 3 dígitos
        printInt(ADC1BUF0, 16 | 3 << 16);
        putChar(' '); // Espaço entre leituras

        // Reset do bit AD1IF
        IFS1bits.AD1IF = 0;
    }
    return 0;
}
