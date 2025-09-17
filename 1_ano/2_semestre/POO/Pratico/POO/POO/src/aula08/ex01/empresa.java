package ex01;

import java.util.ArrayList;
import java.util.List;

public class empresa {
    protected String nome;
    protected String codigoPostal;
    protected String email;
    protected List<veiculo> frota;

    public empresa (String nome, String codigoPostal, String email){
        this.nome = nome;
        this.codigoPostal = codigoPostal;
        this.email = email;
        this.frota = new ArrayList<>();
    }


    public veiculo viaturaMaisKM(){
        
        veiculo menosUsado = frota.get(0);

        for (veiculo v : frota){
            if (v.distanciaTotal() > menosUsado.distanciaTotal()){
                menosUsado = v;
            }
        }
        
        return menosUsado;
    }






}
