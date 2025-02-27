package aula02;

import java.util.Scanner;

public class Ex_2 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Intruduza a coordenada x em p1:");
        int x1 = sc.nextInt();
        System.out.print("Intruduza a coordenada x em p2:");
        int x2 = sc.nextInt();
        System.out.print("Intruduza a coordenada y em p1:");
        int y1 = sc.nextInt();
        System.out.print("Intruduza a coordenada y em p2:");
        int y2 = sc.nextInt();

        double dist = Math.sqrt(Math.pow(x2-x1,2)+Math.pow(y2-y1,2));
        System.out.println(dist);
        sc.close();
    }
}
