package guiao_12;

import java.time.LocalDate;

public class Contact {
    private static int nextId = 1; // Para gerar IDs únicos automaticamente

    private final int id;
    private String name;
    private int phoneNumber;
    private String email;
    private String birthDate;

    public Contact(String name, int phoneNumber, String email, String birthDate) {
        this.id = nextId++;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.birthDate = birthDate;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getPhoneNumber(){
        return phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    @Override
    public String toString() {
        return "Contact{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", email='" + email + '\'' +
                ", birthDate=" + birthDate +
                '}';
    }
}