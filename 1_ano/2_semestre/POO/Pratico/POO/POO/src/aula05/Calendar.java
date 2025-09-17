package aula05;

import java.sql.Date;
import java.util.Scanner;

public class Calendar {

    Scanner cc = new Scanner(System.in);


    private int year;
    private int weekday;
    private int[][] events;
    
/* 
    public void getInfo(){
        System.out.print("Digita o ano ->> ");
        this.year = cc.nextInt();

        System.out.print("Digita o mes ->> ");
        this.month = cc.nextInt();

        System.out.print("Digita o primeiro dia da semana [1 a 7] ->> ");
        this.year = cc.nextInt();
    }
*/
    public Calendar(int year, int weekday){
        this.year = year;
        this.weekday = weekday;
        this.events = []
    }

    public static void main(String[] args) {
        
    }
}
