package biblioteca;

import java.util.ArrayList;
import java.util.List;

public abstract class Utilizador {
    private String nome;
    private int id;
    public List<Livro> livrosRequisitados;


    abstract boolean requesitarLivro(Livro l);

    public boolean devolverLivro(Livro l){
        
        if (this.livrosRequisitados.contains(l)){
            l.devolver();
            livrosRequisitados.remove(l);
            return true;
        }
        return false;
    }
}
