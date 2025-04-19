package ex01;

public class veiculo implements IKmPercorridos {
    protected String matricula;
    protected String marca;
    protected String modelo;
    protected int potencia;
    protected int KmPercorridos;
    protected int ultimoTrajeto;


    public veiculo(String matricula, String marca, String modelo, int potencia){
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
        this.KmPercorridos = 0;
        this.ultimoTrajeto = 0;
    }


    public void trajeto(int quilometros){
        this.KmPercorridos += quilometros;
        this.ultimoTrajeto = quilometros;
    }

    public int ultimoTrajeto(){
        return this.ultimoTrajeto;
    }

    public int distanciaTotal(){
        return KmPercorridos;
    }


}
