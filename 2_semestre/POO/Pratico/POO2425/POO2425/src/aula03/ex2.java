package aula03;

import java.util.Scanner;

public class ex2 {
    public static Scanner cc = new Scanner(System.in);

    public static void main(String[] args) {
        int vezes = 0;
        int tentativa = -1;
        
        int resposta = (int) (Math.random() * 101);
        
        do{
            tentativa = ler_numero("escreve a tua -> ");
            
            vezes += 1;

            if (resposta > tentativa){
                System.out.println("valor escolhido muito baixo");
            }
            else if(resposta < tentativa){
                System.out.println("valor ecolhido muito alto");
            }
        }while(!(resposta == tentativa));





        System.out.println(("parabens conseguiste com "+vezes+ " tentativas"));
        System.out.println("O compuador fez com " + computador(resposta) + " tentativas");
        
    }
    
    public static int ler_numero(String texto){
        int n;
        System.out.print(texto);

        while (true) {
            if (cc.hasNextInt()) {  
                n = cc.nextInt();
                if (n > 1) {  
                    return n;  
                } else {
                    System.out.print("Erro: Insira um número maior que 1: ");
                }
            } else {
                System.out.print("Erro: Insira um número inteiro válido: ");
                cc.next();  
            }
        }
    }
    
    public static int computador(int resposta){
        int tentativas = 1; // numero de tentativas do computador 
        int minimo = 0; // limite inferior 
        int maximo = 100; // limite superiro
        
        int escolha; // a escolha do computador ainda nao defenida

        escolha = (minimo + maximo) / 2; // primeira escolha que sera o ponto medio entre os limites


        while(!(resposta == escolha)){ // loop que apenas irá parar quando a maquina acertar a resposta
            
            tentativas += 1; //contagem das tentativas

            escolha = (minimo + maximo) / 2;// escolha que sera sempre o ponto medio dos limites

            //alteraçao dos limites consoante os numeros que se vao descartando
            if(escolha < resposta){
                minimo = escolha;
            }
            else if(escolha > resposta){
                maximo = escolha;
            }
        }
        return tentativas; // retornar numero de tentativas que o computador precisou
    }
}
