package ex01;

public class motociclo extends veiculo{
        private String tipo;

        public motociclo(String matricula, String marca, String modelo, int potencia,String tipo){
            super(matricula, marca, modelo, potencia);
            this.tipo = tipo;
        }
}
