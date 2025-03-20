package aula04;

class x{
    public String carro;
    
    public x(String carro){
        this.carro = carro;
    }

    public String getcarro(){
        return carro;
    }
}



public class teste {
    public static void main(String[] args) {
        x joana = new x("caror"); 
        
        System.out.println(joana.getcarro());
    }
}
