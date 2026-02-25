#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(void)
{
    int linhas;
    
    printf("Escrever quantas linhas vai ter a coluna:\n");
    scanf("%d", &linhas);


    printf("|%-10s |%-10s |%-10s\n", "numeros", "quadrados", "raizes quadradas");
    printf("--------------------------------------------------\n");
    for (int i = 1; i<= linhas; i++){
        printf("|%-10d |%-10d |%-10.2f\n", i , i*i, sqrt(i));
    }
    
    
    system("pause");

    return 0;
}