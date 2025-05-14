package biblioteca;

public class Autor {
    private String nome;
    private String nacionalidade;

    public Autor(String nome, String nacionalida){
        this.nome = nome;
        this.nacionalidade = nacionalida;
    }

    public String toString(){
        return String.format("Nome Autor:%s Nacionalidade:%s",this.nome, this.nacionalidade);
    }
}
