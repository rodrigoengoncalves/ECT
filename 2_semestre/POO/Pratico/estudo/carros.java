package estudo;

import java.util.Scanner;

public class carros {
    
    public Scanner cc = new Scanner(System.in);

    class Veiculo{
        private String matricula;
        private String marca;
        private String modelo;
        private int ano;
        private int quilometragem;

        public Veiculo(String matricula, String marca, String modelo, int ano,int quilometragem){
              
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
        this.quilometragem = quilometragem;
        }


        public String GetMatricula(){
            return this.matricula;
        }

        
        public String GetMarca(){
            return this.marca;
        }

        
        public String GetModelo(){
            return this.modelo;
        }

        
        public int GetAno(){
            return this.ano;
        }
        
        public int GetQuilometragem(){
            return this.quilometragem;
        }
    }

    class Carro extends Veiculo{}
    
    
    
    
    
    public static void main(String[] args) {
        
    }
}
