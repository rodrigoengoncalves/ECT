package aula06;

class DateYMD {
    private int dia, mes, ano;

    public DateYMD(int dia, int mes, int ano) {
        if (validDate(dia, mes, ano)) {
            this.dia = dia;
            this.mes = mes;
            this.ano = ano;
        } else {
            throw new IllegalArgumentException("Data inválida!");
        }
    }

    private boolean validDate(int dia, int mes, int ano) {
        if (mes < 1 || mes > 12) return false;
        if (dia < 1 || dia > daysInMonth(mes, ano)) return false;
        return true;
    }

    private int daysInMonth(int mes, int ano) {
        int[] diasPorMes = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
        if (mes == 2 && isLeapYear(ano)) return 29;
        return diasPorMes[mes - 1];
    }

    private boolean isLeapYear(int ano) {
        return (ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0);
    }

    public String toString() {
        return String.format("%02d-%02d-%04d", dia, mes, ano);
    }
}
