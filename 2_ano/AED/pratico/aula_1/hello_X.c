#include <stdio.h>
#include <stdlib.h>

int main(void) 
{
    char nome[30];
    char apelido[30];

    printf("Diz o teu nome: ");
    scanf("%29s", nome);  // evita overflow

    printf("Diz o teu apelido: ");
    scanf("%29s", apelido);

    printf("Boa tarde %s %s\n", nome, apelido);

    system("pause");

    return 0;
}
