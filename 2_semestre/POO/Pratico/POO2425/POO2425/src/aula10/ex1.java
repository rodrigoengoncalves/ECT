package aula10;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class ex1 {
    
    public static void main(String[] args) {
        String fileName = "major.txt";

        Path file = Paths.get(fileName);   
        try{
            Files.readAllLines(file).stream().forEach(System.out::println);
        } catch (IOException e){
            System.out.println("Certifique-se que o ficheiro \"major.txt\" está na raiz da pasta do projeto");
        }
    }
}