package aula07;

public class ex2 {
    public static void main(String[] args) {
        Date date = new DateYMD(28, 2, 2024);
        
        System.out.println("Data inicial:");
        date.date();
        
        date.increment(date.getDay(), date.getMonth(), date.getYear());
        System.out.println("Após incrementar um dia:");
        date.date();
        
        date.decrement(date.getDay(), date.getMonth(), date.getYear());
        System.out.println("Após decrementar um dia:");
        date.date();


        DateND datinha = new DateND(27, 3, 2025);

        datinha.dist();
    }
}

abstract class Date{
    
    public abstract void increment(int day, int month, int year); //avançar um dia

    public abstract void decrement(int day, int month, int year); // reduzir um dia
    
    public abstract void date(); // escrever data


    public abstract int getDay();
    public abstract int getMonth();
    public abstract int getYear();
    
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

}


class DateYMD extends Date {
    
    private int day;
    private int month;
    private int year;

    public DateYMD(int day, int month, int year) {
        if (!valid(day, month, year)) {
            throw new IllegalArgumentException("Data inválida.");
        }
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public int getDay() {
        return this.day;
    }

    public int getMonth() {
        return this.month;
    }

    public int getYear() {
        return this.year;
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
    }

    public void date(){
        System.out.printf("%d/%d/%d %n", this.day, this.month, this.year);
    }
}


class DateND extends Date{
        private int day;
        private int month;
        private int year;

        public DateND(int day, int month, int year) {
            this.day = day;
            this.month = month;
            this.year = year;
        }
    
        DateYMD data = new DateYMD(1, 1, 2000);

        public int getDay() {
            return this.day;
        }
    
        public int getMonth() {
            return this.month;
        }
    
        public int getYear() {
            return this.year;
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
        }
    
        public void date(){
            System.out.printf("%d/%d/%d %n", this.day, this.month, this.year);
        }

        public int dist(){
            int distancia = 0; 
            
            if(this.year - data.getYear() > 0){
                distancia += ((this.year - data.getYear())-1)*365;
            }
            else{
                distancia -= (1 + (this.year - data.getYear()))*365;
            }

            for (int i = 0; i != data.getMonth()-1; i++){
                i = i + 1;
                distancia += super.monthDays(i, this.year);
            }

            distancia += data.getDay();
            System.out.printf("A distância da data %d/%d/%d para a data %d/%d/%d em dias é %d", this.day, this.month, this.year, data.getDay(), data.getMonth(), data.getYear(), distancia);
            return distancia;
        }


}