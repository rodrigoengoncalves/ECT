package biblioteca;

public class Livro {
    private int id;
    private String titulo;
    private int anoPublicacao;
    private Autor autor;
    private boolean disponivel;

    
    
    public Livro(int id, String titulo, int anoPublicacao, Autor autor){
        this.id = id;
        this.titulo = titulo;
        this.anoPublicacao = anoPublicacao;
        this.autor = autor;
        this.disponivel = true;
    }
    
    public void requesitar(){
        this.disponivel = false;
    } 

    public void devolver(){
        this.disponivel = true;
    }

    public String toString(){
        return String.format("id:%d titulo:%s Ano de publicação:%d autor:%s",this.id, this.titulo, this.anoPublicacao, this.autor.toString());
    }
}
