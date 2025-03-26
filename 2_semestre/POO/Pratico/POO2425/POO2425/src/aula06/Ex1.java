package aula06;

public class Ex1 {

    public static void main(String[] args) {
    DateYMD d = new DateYMD(5, 10, 1988);
    Pessoa p = new Pessoa("Ana Santos", 98012244, d);

    Aluno al = new Aluno ("Andreia Melo", 9855678, new DateYMD(18, 7, 1990), new DateYMD(1, 9, 2018));
    Professor p1 = new Professor("Jorge Almeida", 3467225, new DateYMD(13, 3, 1967), "Associado", "Informática");
    Bolseiro bls = new Bolseiro ("Igor Santos", 8976543, new DateYMD(11, 5, 1985), p1, 900);
    
    bls.setBolsa(1050);
    
    System.out.println("Aluno: " + al.getNome());
    System.out.println(al);

    System.out.println("Bolseiro: " + bls.getNome() + ", NMec: " + bls.getNMec() + ", Bolsa: " + bls.getBolsa() + ", Orientador: " + bls.getOrientador());
    System.out.println(bls);

    }
    
}

class Pessoa {
    private String name;
    private int cc;
    private DateYMD dataNasc;
    
    public Pessoa(String name, int cc, DateYMD dataNasc){
        this.name = name;
        this.cc = cc;
        this.dataNasc = dataNasc;

    }

    public String getNome(){
        return name;
    }

    @Override
    public String toString(){
        return String.format("nome: %s, CC:%d, Data de nascimento: %s ",name, cc, dataNasc);
    }
}

class Aluno extends Pessoa{
    private int nMecanograico; 
    private DateYMD dataInscri;

    public Aluno(String name, int cc, DateYMD dataNasc, DateYMD dataInscri){
        super(name, cc, dataNasc);
        
        this.nMecanograico = nMecanograico;
        this.dataInscri = dataInscri;
    }

    public int getNMec(){
        return this.nMecanograico;
    }


}

class Bolseiro extends Aluno{
    private Professor prof;
    private int valor; 
    
    public Bolseiro(String name, int cc, DateYMD dataNasc, Professor prof, int valor){
        super(name, cc, dataNasc, new DateYMD(1, 11, 2019));

        this.prof = prof;
        this.valor = valor;
    
    }  
    public void setBolsa(int valor){
    
    this.valor = valor;
    }

    public String getNome(){
        return super.getNome();
    }

    public int getNMec(){
        return super.getNMec();
    }

    public int getBolsa(){
        return valor;
    }

    public Professor getOrientador(){
        return this.prof;
    }
}

class Professor extends Pessoa{
    
    private String categoria;
    private String departamento;
    
    public Professor(String name, int cc, DateYMD dataNasc, String categoria, String departamento){
        super(name, cc, dataNasc);
        
        this.categoria = categoria;
        this.departamento = departamento;

    }
}