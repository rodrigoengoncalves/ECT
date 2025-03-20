package aula05;

import java.util.Scanner;

public class DateYMD {
    
    private int day;
    private int month;
    private int year;

    private static Scanner cc = new Scanner(System.in);

    public static void main(String[] args) {
        DateYMD data = new DateYMD();
        int option;

        do {
            System.out.println("Date operations:");
            System.out.println("1 - create new date");
            System.out.println("2 - show current date");
            System.out.println("3 - increment date");
            System.out.println("4 - decrement date");
            System.out.println("0 - exit");
            System.out.print("Choose an option: ");
            option = cc.nextInt();

            switch (option) {
                case 1:
                    data.set();
                    break;
                case 2:
                    data.date();
                    break;
                case 3:
                    data.increment(data.day, data.month, data.year);
                    System.out.println("Date incremented!");
                    break;
                case 4:
                    data.decrement(data.day, data.month, data.year);
                    System.out.println("Date decremented!");
                    break;
                case 0:
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.println("Invalid option, try again.");
            }
        } while (option != 0); 
    }


    public static Boolean validMonth(int month){
        
        return (1 <= month && month <= 12);
    }


    public static Integer monthDays(int month, int year){

        if (month == 2){
            if(leapYear(year)){
                return 29;
            }
            else{
                return 28;
            }
        }
        else if(month == 4 || month == 6 || month == 9 || month == 11){
            return 30;
        }
        else{ 
            return 31;
        }    
    }
    
    public static Boolean leapYear(int year){
        return ((year % 4== 0 && year % 100 != 0) || year % 400 == 0);
    }

    public static Boolean valid(int day, int month, int year){
        
        return (validMonth(month) && (monthDays(month, year) >= day && day >= 1)); 
    }

    public void set(){
        
        do{
            System.out.print("digita o dia -->> ");
            this.day = cc.nextInt();

            System.out.print("digita o mes -->> ");
            this.month = cc.nextInt();

            System.out.print("digita o ano -->> ");
            this.year = cc.nextInt();
        }while(!valid(this.day, this.month, this.year));
        
        System.out.println("Data criada com sucesso !!!");
    }   

    public void date(){
        System.out.printf("%d/%d/%d %n", this.day, this.month, this.year);
    }




    public void increment(int day, int month, int year){
        
        day++;
        
        if(!valid(day, month, year)){
            month++;
            day = 1;
            if(!valid(day, month, year)){
                year++;
                month = 1;
                day = 1;
            }        
        }
        
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public void decrement(int day, int month, int year){
        
        day--;
        
        if(!valid(day, month, year)){
            month--;
            day = monthDays(month, year);
            
            if(!valid(day, month, year)){
                year--;
                month = 12;
                day = 31;
            }        
        }
        
        this.day = day;
        this.month = month;
        this.year = year;
    }

}
