#include <detpic32.h>

void wait(int ts);

int main(void) {
    // 1. Configurar os LEDs (TRISE = 0 para saída)
    // Os LEDs da DETPIC32 estão ligados aos pinos RE0 a RE3
    TRISEbits.TRISE0 = 0;
    TRISEbits.TRISE1 = 0;
    TRISEbits.TRISE2 = 0;
    TRISEbits.TRISE3 = 0;

    int cnt = 0;
    
    printStr("Teste de LEDs e Terminal\n");

    while(1) {
        // --- Parte PC (Terminal) ---
        printInt(cnt, 10 | 3 << 16); 
        putChar('\r');

        // --- Parte Hardware (LEDs) ---
        // Escreve o valor do contador diretamente na porta E (LATE)
        // Os 4 LEDs vão mostrar o número em binário
        LATE = (LATE & 0xFFF0) | (cnt & 0x0F);

        cnt++;
        if (cnt > 15) { // Contar só até 15 (limite de 4 bits/LEDs)
            cnt = 0;
        }

        wait(5); // Espera 0.5s
    }
    return 0;
}

void wait(int ts) {
    int i;
    for(i = 0; i < 515000 * ts; i++);
}