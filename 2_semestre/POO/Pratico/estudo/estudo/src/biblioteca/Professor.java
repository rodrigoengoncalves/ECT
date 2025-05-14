package biblioteca;

public class Professor extends Utilizador{
    private int Livros = 0;
    private int maxLivro = 5;

    public boolean requesitarLivro(Livro l){
        if (Livros > maxLivro && livrosRequisitados.contains(l)){
            ++Livros;
            return true;
        }else{
            return false;
        }
    }
}
