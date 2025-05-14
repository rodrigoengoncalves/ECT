package biblioteca;

public class Aluno extends Utilizador{
    
    private int Livros = 0;
    private int maxLivro = 3;
    
    public boolean requesitarLivro(Livro l){
        if (Livros > maxLivro && livrosRequisitados.contains(l)){
            ++Livros;
            return true;
        }else{
            return false;
        }
    }
}
