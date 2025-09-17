package aula09.ex09_2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class PlaneManager {
    
    ArrayList<Plane> frota = new ArrayList<>();


    public void addPlane(Plane plane){
        frota.add(plane);
    }
    
    public void removePlane(String id){
            frota.removeIf(plane -> plane.getId().equals(id)); // verifica todos os planes como um for
    }
    
    public Plane searchPlane(String id){
        
        for (Plane p : frota){
            if (p.getId().equals(id)){
                return p;
            }
        }
        return null;
        
    }
    

    public List<Plane> getCommercialPlanes(){
        ArrayList<Plane> cp = new ArrayList<>();

        for (Plane p : frota){
            if (p.getModelo().equals("Comercial")){
                cp.add(p);
            }
        }

        if (cp.size() > 0){
            return cp;
        }else{return null;}
    }

        public List<Plane> getMilitaryPlanes(){
        ArrayList<Plane> mp = new ArrayList<>();

        for (Plane p : frota){
            if (p.getModelo().equals("Militar")){
                mp.add(p);
            }
        }

        if (mp.size() > 0){
            return mp;
        }else{return null;}
    }
    
    public void printAllPlanes(){
        for (Plane p : frota){
            System.out.println(p.toString());
        }
    }


    public Plane getFastestPlane(){
        int max = 0;
        Plane fastestPlan = null;

        for (Plane p : frota){
            if(p.getVelocidadeMax() > max){
                max = p.getVelocidadeMax();
                fastestPlan = p;
            }
        }

        return fastestPlan;
    }


    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        PlaneManager manager = new PlaneManager();
        int opcao;

        manager.addPlane(new CommercialPlane("C001", "Airbus", "Comercial", 2018, 180, 850));
        manager.addPlane(new CommercialPlane("C002", "Boeing", "Comercial", 2020, 220, 890));
        manager.addPlane(new MilitaryPlane("M001", "Lockheed Martin", "Militar", 2015, 2, 2400, 6));
        manager.addPlane(new MilitaryPlane("M002", "Dassault", "Militar", 2017, 1, 2100, 4));

        do {
            System.out.println("\n==== MENU FROTA DE AVIÕES ====");
            System.out.println("1. Adicionar avião");
            System.out.println("2. Remover avião");
            System.out.println("3. Procurar avião por ID");
            System.out.println("4. Imprimir todos os aviões");
            System.out.println("5. Imprimir aviões por tipo (comerciais/militares)");
            System.out.println("6. Imprimir avião mais rápido");
            System.out.println("7. Sair");
            System.out.print("Opção: ");
            opcao = sc.nextInt();
            sc.nextLine(); // limpar buffer

            switch (opcao) {
                case 1 -> {
                    System.out.print("Tipo de avião (C = Comercial, M = Militar): ");
                    String tipo = sc.nextLine().trim().toUpperCase();
                    System.out.print("ID: ");
                    String id = sc.nextLine();
                    System.out.print("Fabricante: ");
                    String fabricante = sc.nextLine();
                    System.out.print("Modelo: ");
                    String modelo = sc.nextLine();
                    System.out.print("Ano de produção: ");
                    int ano = sc.nextInt();
                    System.out.print("Lotação máxima: ");
                    int lotacao = sc.nextInt();
                    System.out.print("Velocidade máxima: ");
                    int velocidade = sc.nextInt();

                    if (tipo.equals("C")) {
                        manager.addPlane(new CommercialPlane(id, fabricante, "Comercial", ano, lotacao, velocidade));
                    } else if (tipo.equals("M")) {
                        System.out.print("Número de munições: ");
                        int municoes = sc.nextInt();
                        manager.addPlane(new MilitaryPlane(id, fabricante, "Militar", ano, lotacao, velocidade, municoes));
                    } else {
                        System.out.println("Tipo inválido!");
                    }
                }
                case 2 -> {
                    System.out.print("ID do avião a remover: ");
                    String id = sc.nextLine();
                    manager.removePlane(id);
                }
                case 3 -> {
                    System.out.print("ID do avião a procurar: ");
                    String id = sc.nextLine();
                    Plane p = manager.searchPlane(id);
                    if (p != null) System.out.println(p);
                    else System.out.println("Avião não encontrado.");
                }
                case 4 -> manager.printAllPlanes();
                case 5 -> {
                    System.out.print("Tipo a listar (C = Comercial, M = Militar): ");
                    String tipo = sc.nextLine().trim().toUpperCase();
                    List<Plane> lista = null;
                    if (tipo.equals("C")) lista = manager.getCommercialPlanes();
                    else if (tipo.equals("M")) lista = manager.getMilitaryPlanes();

                    if (lista != null && !lista.isEmpty()) {
                        for (Plane p : lista) System.out.println(p);
                    } else {
                        System.out.println("Nenhum avião encontrado desse tipo.");
                    }
                }
                case 6 -> {
                    Plane p = manager.getFastestPlane();
                    if (p != null) System.out.println("Avião mais rápido:\n" + p);
                    else System.out.println("Frota vazia.");
                }
                case 7 -> System.out.println("A sair...");
                default -> System.out.println("Opção inválida.");
            }
        } while (opcao != 7);

        sc.close();

    }
}
