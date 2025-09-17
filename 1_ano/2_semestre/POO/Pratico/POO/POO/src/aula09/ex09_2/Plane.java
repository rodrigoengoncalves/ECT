package aula09.ex09_2;

public class Plane {
    private String id;
    private String Fabricante;
    private String Modelo;
    private int AnoProducao;
    private int NmaxPassageiros;
    private int VelocidadeMax;

    // Construtor
    public Plane(String id, String fabricante, String modelo, int anoProducao, int nmaxPassageiros, int velocidadeMax) {
        this.id = id;
        this.Fabricante = fabricante;
        this.Modelo = modelo;
        this.AnoProducao = anoProducao;
        this.NmaxPassageiros = nmaxPassageiros;
        this.VelocidadeMax = velocidadeMax;
    }

    // Getters
    public String getId() {
        return id;
    }

    public String getFabricante() {
        return Fabricante;
    }

    public String getModelo() {
        return Modelo;
    }

    public int getAnoProducao() {
        return AnoProducao;
    }

    public int getNmaxPassageiros() {
        return NmaxPassageiros;
    }

    public int getVelocidadeMax() {
        return VelocidadeMax;
    }
}
