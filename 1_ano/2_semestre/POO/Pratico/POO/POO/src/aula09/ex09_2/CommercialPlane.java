package aula09.ex09_2;

public class CommercialPlane extends Plane{
    
    private int nTripulantes;
    
    public CommercialPlane(String id, String fabricante, String modelo, int anoProducao, int nmaxPassageiros, int velocidadeMax) {
        super(id,fabricante,modelo,anoProducao,nmaxPassageiros, velocidadeMax);
        this.nTripulantes = nTripulantes;
    }

        // Getters
    public int getTripulantes(){
        return nTripulantes;
    }

    public String getPlaneType(){
        return "Comercial";
    }

    public String toString(){
        return String.format("id:%s fabricante:%s modelo:%s ano:%d lotaçao maxima:%d velocidade maxima:%d numero de tripulantes:%d", getId(), getFabricante(), getModelo(), getAnoProducao(), getNmaxPassageiros(), getVelocidadeMax(), this.nTripulantes);
    }
    
}


