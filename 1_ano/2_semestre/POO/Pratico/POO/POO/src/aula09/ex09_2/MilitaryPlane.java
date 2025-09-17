package aula09.ex09_2;

public class MilitaryPlane extends Plane{
    
    private int municoes;
    
    public MilitaryPlane(String id, String fabricante, String modelo, int anoProducao, int nmaxPassageiros, int velocidadeMax, int municoes){
        super(id, fabricante, modelo, anoProducao, nmaxPassageiros, velocidadeMax);
        this.municoes = municoes;
    }

    public String getPlaneType(){
        return "Militar";
    }

    public String toString(){
        return String.format("id:%s fabricante:%s modelo:%s ano:%d lotaçao maxima:%d velocidade maxima:%d muniçoes:%d", getId(), getFabricante(), getModelo(), getAnoProducao(), getNmaxPassageiros(), getVelocidadeMax(), this.municoes);
    }

}
