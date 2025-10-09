#include <math.h>
#include <stdio.h>
#include <stdlib.h>

unsigned int is_armstrong(unsigned int n){
    int digits[3];
    int sum = 0;
    
    digits[0] = n / 100;          // centena
    digits[1] = (n / 10) % 10;    // dezena
    digits[2] = n % 10;           // unidade

    for (int i = 0; i < 3; i++){
        sum += digits[i] * digits[i] * digits[i];
    }

    return sum == n;
}

int main (void){
    
    for (int i = 100; i <= 999; i++){
        if (is_armstrong(i)){
            printf("%d\n", i);
        }
    }
    
    system("pause");
    return 0;
}