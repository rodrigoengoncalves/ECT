package aula03;

import java.util.Scanner;

public class ex6 {
    public static Scanner cc = new Scanner(System.in);
    
    public static void main(String[] args){
        int[] data = ler_data("Qual o mesm que queres / o dia da semana em que começa o mes -> ");
    
        System.out.println(escrever_calendario(data[0], data[1]));
    }

    public static int[] ler_data(String texto){
        
        System.out.print(texto);
        String resposta = cc.nextLine();

        resposta = resposta.replace("/", "");        
        

        String mes_str = resposta.substring(0, 2);
        String dia_str = resposta.substring(2);

        int mes = Integer.parseInt(mes_str);
        int dia = Integer.parseInt(dia_str);
        
        return new int[]{mes, dia};
    }

    public static String escrever_calendario(int mes, int dia_semana){
        
        String[] meses = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

        int dias = 0;

        String calendario = "   "+ meses[mes-1] +" 2025   \nSu Mo Tu We Th Fr Sa\n";
        
        switch (mes) {
            case 1,3,5,7,8,10,12:
                dias = 31;
                break;
            case 4,6,9,11:
                dias = 30;
            case 2:
                dias = 28;
        }

        for (int i = 1; i < dia_semana; i++){
            calendario = calendario + "   ";
        }

        for(int i = 1; i <= dias; i++){
            
            dia_semana++;
            if (i<10){
                calendario = calendario + i + "  ";
            }
            else{
                calendario = calendario + i + " ";
            }
            
            if(dia_semana > 7){
                dia_semana = 1;
                calendario = calendario + "\n"; 
            }

        }

        
        return calendario;
    }
}
