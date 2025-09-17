package aula10;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.IOException;

public class Ex10_1 {
        
    public static void main(String[] args) throws IOException {
            
            
            Map<String, List<String>> mapa = new HashMap<>();
            Map<String, Integer> numero = new HashMap<>();

            String antes = null;

            String conteudo = Files.readString(Path.of("major.txt"));
            String[] palavras = conteudo.split("[\\t\\n\\.,:`´;?!\\-*{}\\[\\]()=+&\"'\\\\ ]+");
            for (String palavra : palavras) {
                if (palavra.length() >= 3) {
                    
                    if (!mapa.containsKey(palavra)) {
                        mapa.put(palavra, new ArrayList<>());
                    }
                    if (antes != null) {
                        mapa.get(antes).add(palavra);
                    }

                    antes = palavra;
                }
            }

            for (String key : mapa.keySet()){
                System.out.print(key + "= {");
                for (String value : mapa.get(key)) {
                    if (numero.containsKey(value)){
                        numero.put(value, numero.get(value) + 1);
                    } else {
                        numero.put(value, 1);
                    }
                    
                    System.out.print(value +"="+ numero.get(value)+ ", ");
                }
                System.out.println("}");
                
            }   
    }
}
