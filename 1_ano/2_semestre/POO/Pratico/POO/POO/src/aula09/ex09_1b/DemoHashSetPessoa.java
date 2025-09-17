package aula09.ex09_1b;

import java.util.HashSet;
import java.util.Set;

public class DemoHashSetPessoa {
    public static void main(String[] args) {
        Set<Pessoa> c3 = new HashSet<>();

        c3.add(new Pessoa("Rodrigo", 18));
        c3.add(new Pessoa("Tomás", 30));
        c3.add(new Pessoa("Leandro", 49));
        c3.add(new Pessoa("Manuel", 18));
        c3.add(new Pessoa("Tiago", 23));

        boolean tentativa = c3.add(new Pessoa("Rodrigo", 18));

        if(tentativa){System.out.println("Foi possivel adicionar uma pessoa repetida");}else{System.out.println("Nao foi possivel adicionar pessoas repetidas");}

        for (Pessoa p : c3){
            System.out.println(p);
        }
    }
}
