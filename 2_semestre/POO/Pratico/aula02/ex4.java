package aula02;

import java.util.Scanner;

class ex4 {

    public static Scanner cc = new Scanner(System.in);

    public static void main(String[] args){
        String resposta;
        String tabela = "NotaT NotaP Pauta";
        
        Boolean acabar = false;

        do {
            tabela = pauta(media(),tabela);

            System.out.print("deseja continuar a adicionar notas ? ->");
            resposta = cc.nextLine();

            if(!resposta.contentEquals("sim")){
                acabar = true;
            }

        } while (acabar == false);

        System.out.println(tabela);

    }
    public static double[] media(){
        
        System.out.print("Escreve a nota da teorica");
        double nt = cc.nextDouble();
        cc.nextLine();

        System.out.print("Escreve a nota da pratica");
        double np = cc.nextDouble();
        cc.nextLine();

        double nf;

        if(nt > 7 && np > 7){
            nf = nt*0.4 + np*0.6;
        }else{
            nf= 66.0;
        }
        
        return new double[]{nt,np,nf};
    }

    public static String pauta(double[] notas, String texto){
        texto = texto+"\n"+notas[0];
        
        
        for(int i = 1; i < notas.length; i++){
            
            if(notas[i]<10){
                texto = texto + "    " + notas[i];    
            }else{
                texto = texto + "   " +notas[i];
            }
        }        
        
        return texto;
    }
}