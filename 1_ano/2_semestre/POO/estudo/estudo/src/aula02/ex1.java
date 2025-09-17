package aula02;

import java.util.Scanner;

public class ex1 {
    public static void main(String[] args) {
        int segundos = 0;
        int minutos = 0;
        int horas = 0;


        Scanner cc = new Scanner(System.in);


        System.out.print("Digita o numero de segundos -> ");
        segundos = cc.nextInt();

        minutos = segundos / 60;
        segundos = segundos % 60;

        horas = minutos / 60;
        minutos = minutos % 60;


    }
}
