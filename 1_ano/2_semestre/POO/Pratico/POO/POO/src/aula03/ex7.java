package aula03;

import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class ex7 {
    public static void main(String[] args) throws IOException{
    
    Scanner input = new Scanner(new FileReader("words.txt")); // algum erro que desconhesso
    
    while (input.hasNext()) {
    
        String word = input.next();
    
        System.out.println(word);
    
        }
    }
}
