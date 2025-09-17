package aula02;

import java.util.Scanner;

public class Ex_1 {
    
    public static void main (String[] args){
        int tempo, horas, minutos, segundos, resto;
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite um valor em segundos:");
        tempo = sc.nextInt();
        horas = tempo/3600;
        resto = tempo % 3600;
        minutos = resto / 60;
        segundos = resto % 60;
        System.out.printf(String.format("%02d:%02d:%02d", horas,minutos,segundos));
        sc.close();
    }
}
