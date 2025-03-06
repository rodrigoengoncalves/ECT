package aula04;

import java.util.ArrayList;
import java.util.List;

class Product {
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public double getTotalValue() {
        return price * quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int  getQuantity() {
        return quantity;
    }
}


class CashRegister {
    private List<Object> lista = new ArrayList<>();
    // TODO: completar implementação da class
    public void addProduct(Product p){
        lista.add(p.getName());
        lista.add(p.getPrice());
        lista.add(p.getTotalValue());

        tabela(lista);
    }

    public void tabela(List l){
        System.out.println("----------------------------");
        System.out.println("Product\tPrice\tQuantity\tTotal");
        for(int i = 2;i<lista.size();i = i + 3){
            System.out.println(l.get(i-2)+"\t"+l.get(i-1)+"\t"+l.get(i)+"\t");
        }
    }

    

}

public class CashRegisterDemo {

    public static void main(String[] args) {

        // Cria e adiciona 5 produtos
        CashRegister cr = new CashRegister();
        cr.addProduct(new Product("Book", 9.99, 3));
        cr.addProduct(new Product("Pen", 1.99, 10));
        cr.addProduct(new Product("Headphones", 29.99, 2));
        cr.addProduct(new Product("Notebook", 19.99, 5));
        cr.addProduct(new Product("Phone case", 5.99, 1));
        
        // TODO: Listar o conteúdo e valor total
//        System.out.println(cr);   COMENTEI PORQUE USEI PRINTS...

    }
}