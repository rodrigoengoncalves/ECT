package aula02;

import java.util.Scanner;

public class ex1 {

    private static Scanner cc = new Scanner(System.in);
    public static void main(String[] args)
    {

        user_input("escreve um numero inteiro maior que 0:", 0);
        


    }

    public static Boolean numero_primo(int n)
    {
        Boolean prime = true;
        
        if (n < 2){
            prime = false;
        }
        
        for(int i = n-1; i>1; i--){
            if(n%1 == 0){
                prime = false;
            }
        }
        
        return prime;
    }
    
    public static int user_input(String message, int minValue)
    {
        // incompleto
        int n;

        int in = minValue-1;
        do{
            System.out.print(message);
            n = cc.nextInt();   
        }while(in <= minValue && !cc.hasNextInt());
        return n;
    }
}
