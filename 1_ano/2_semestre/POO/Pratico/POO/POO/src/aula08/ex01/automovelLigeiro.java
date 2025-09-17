package ex01;

public class automovelLigeiro extends veiculo{

    private String numeroQuadro;
    private int capacidadeBagageira;
    
    public automovelLigeiro(String matricula, String marca, String modelo, int potencia, String numeroQuadro, int capacidadeBagageira) {
        super(matricula, marca, modelo, potencia);
        this.numeroQuadro = numeroQuadro;
        this.capacidadeBagageira = capacidadeBagageira;
    }
}
