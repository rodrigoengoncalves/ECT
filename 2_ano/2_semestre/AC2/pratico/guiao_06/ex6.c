#include <detpic32.h>

/*
 * Exercício 6: Integração Completa
 * - Amostragem do ADC: 5 Hz (cada 200ms)
 * - Refrescamento dos Displays: 100 Hz (cada 10ms)
 * - Exibir tensão (0.0V a 3.3V) nos displays de 7 segmentos.
 */

// Tabela de conversão para 7 segmentos (Porto B, bits 8-14)
static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

void send2displays(unsigned char value) {
    static char displayFlag = 0;
    
    // Separar os dois dígitos (High e Low) do valor em BCD
    unsigned char dh = value >> 4;      // Dígito das dezenas
    unsigned char dl = value & 0x0F;    // Dígito das unidades

    if(displayFlag == 0) {
        // Ativar Display Low (unidades)
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        // Enviar código para o Porto B (bits 8 a 14)
        LATB = (LATB & 0x80FF) | (display7Scodes[dl] << 8);
    } else {
        // Ativar Display High (dezenas)
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        // Enviar código para o Porto B (bits 8 a 14)
        // Adicionamos o ponto decimal (bit 15 do Porto B se disponível, 
        // mas aqui simulamos o ponto no dígito da dezena para 3.3V)
        LATB = (LATB & 0x80FF) | (display7Scodes[dh] << 8);
        LATBbits.LATB15 = 1; // Ativar ponto decimal no display da dezena (X.Y)
    }
    displayFlag = !displayFlag;
}

unsigned char toBcd(unsigned char value) {
    return ((value / 10) << 4) + (value % 10);
}

int main(void) {
    // 1. Configurar Portos dos Displays (RD5 e RD6 como saídas, RB8-RB15 como saídas)
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    TRISB = TRISB & 0x00FF; // RB8 a RB15 como saídas

    // 2. Configurar porto RB4 como entrada analógica (AN4)
    TRISBbits.TRISB4 = 1;     
    AD1PCFGbits.PCFG4 = 0;    

    // 3. Configurar módulo ADC
    AD1CON1bits.SSRC = 7;     
    AD1CON1bits.CLRASAM = 1;  
    AD1CON3bits.SAMC = 16;    
    AD1CON2bits.SMPI = 3;     // 4 amostras por sequência
    AD1CHSbits.CH0SA = 4;     
    AD1CON1bits.ON = 1;       

    int i = 0;
    unsigned char voltageBcd = 0;

    while(1) {
        // Amostragem de 5 Hz (cada 200ms -> 20 iterações de 10ms)
        if(i == 0) {
            // Iniciar conversão
            AD1CON1bits.ASAM = 1; 
            while(IFS1bits.AD1IF == 0); // Esperar fim

            // Ler amostras e calcular média
            int *p = (int *)(&ADC1BUF0);
            int soma = 0, j;
            for(j = 0; j < 4; j++) soma += p[j*4];
            int media = soma / 4;

            // Converter para tensão (0-33 decivolts)
            int v = (media * 33 + 511) / 1023;
            voltageBcd = toBcd((unsigned char)v);

            IFS1bits.AD1IF = 0; // Reset flag
        }

        // Atualizar visualização (frequência de 100 Hz -> cada 10ms)
        send2displays(voltageBcd);

        // Atraso de 10ms usando Core Timer
        resetCoreTimer();
        while(readCoreTimer() < 200000); 

        // Ciclo de 20 iterações (20 * 10ms = 200ms = 5 Hz)
        i = (i + 1) % 20;
    }
    return 0;
}
