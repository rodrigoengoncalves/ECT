package aula02;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Scanner;

public class ex4 {
    public static void main(String[] args) throws IOException {
        ArrayList<Double> teorica = new ArrayList<>();
        ArrayList<Double> pratica = new ArrayList<>();
        ArrayList<Integer> nota_final = new ArrayList<>();

        String resposta = "";
        criarArquivo();
        Scanner cc = new Scanner(System.in);

        while(!resposta.equals("nao"))
        {
        
            System.out.print("Nota da Teorica: ");
            double t = cc.nextDouble();

            System.out.print("Nota da Pratica: ");
            double p = cc.nextDouble();

            cc.nextLine();
            
            teorica.add(t);
            pratica.add(p);
            nota_final.add(media(t,p));
            
            System.out.print("pretende continuar ?");
            resposta = cc.nextLine();
        }
        
        cc.close();
    }

    public static int media(double t,double p){
        int nota_final;

        if(t > 7 || p > 7)
        {
            nota_final = (int) Math.round(0.4 * t + 0.6*p) ;
            return nota_final;
        }
        else
        {
            return 66;
        }
        
    }

    public static void criarArquivo() throws IOException 
    {
        Path local = Path.of("C:\\Users\\rg210\\Desktop\\ECT\\2_semestre\\POO\\Pratico\\aula02\\pauta.txt");
        Files.createFile(local);
        Files.writeString(local, "ola");
    }
}
