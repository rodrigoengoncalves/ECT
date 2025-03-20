package estudo;

import java.util.ArrayList;
import java.util.List;

class biblioteca {
    private List<Livro> livros;
    private List<Associado> associados;
    
    public void addLivro(String nomeLivro, String autor, int ano, String isbn, String estado){
        livros.add(new Livro(nomeLivro, autor, ano, isbn, estado));
    }

    public static void main(String[] args) {
        List<Livro> livros = new ArrayList<>();
        livros.add(new Livro("Java para Iniciantes", "João Silva", 2020, "1234567890", "disponível"));
        livros.add(new Livro("Python Avançado", "Maria Costa", 2018, "0987654321", "disponível"));
        livros.add(new Livro("Estruturas de Dados", "Carlos Oliveira", 2015, "1122334455", "emprestado"));
        livros.add(new Livro("Redes de Computadores", "Ana Santos", 2019, "2233445566", "disponível"));
        livros.add(new Livro("Algoritmos e Programação", "Rui Pereira", 2021, "6677889900", "reservado"));
        livros.add(new Livro("Inteligência Artificial", "Pedro Rodrigues", 2022, "4455667788", "disponível"));

        List<Associado> associados = new ArrayList<>();
        associados.add(new Associado("Carlos Martins", "A12345", "carlos.martins@exemplo.com"));
        associados.add(new Associado("Ana Sousa", "A23456", "ana.sousa@exemplo.com"));
        associados.add(new Associado("Ricardo Almeida", "A34567", "ricardo.almeida@exemplo.com"));
        associados.add(new Associado("Sara Ferreira", "A45678", "sara.ferreira@exemplo.com"));
        associados.add(new Associado("José Pinto", "A56789", "jose.pinto@exemplo.com"));

    }


}


class Livro{
    
    private String titulo;
    private String autor;
    private int ano;
    private String isbn;
    private String estado;


    public Livro(String titulo, String autor,int ano,String isbn,String estado){
        this.titulo = titulo;
        this.autor = autor;
        this.ano = ano;
        this.isbn = isbn;
        this.estado = estado; 
    }
}

class Associado{
    private String nome;
    private String nAssociado;
    private String email;
    private String[] livrosEmprestados;



    public Associado(String nome, String nAssociado, String email) {
        this.nome = nome;
        this.nAssociado = nAssociado;
        this.email = email;
    }
}

