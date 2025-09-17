package guiao_12;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ContactManager {

    private List<Contact> contacts = new ArrayList<>();
    
    private static int minuto = 0;
    private static int emails = 0;

    public void addContact(Contact contact) {
        contacts.add(contact);
    }

    public void removeContact(int id) {
        contacts.removeIf(contact -> contact.getId() == id);
    }

    public Contact getContact(int id) {
        for (Contact contact : contacts) {
            if (contact.getId() == id) {
                return contact;
            }
        }
        return null;
        
    }

    public void sendEmail(int id){
        Contact contact = getContact(id);
        if (contact != null) {
            System.out.println("Sending email to: " + contact.getEmail());
            emails++;

        } else {
            System.out.println("Contact not found.");
        }
    }

    public void call(int id, double minutes){
        Contact contact = getContact(id);
        if (contact != null) {
            System.out.println("Calling " + contact + " for " + minutes + " minutes.");
            minuto += minutes;
        } else {
            System.out.println("Contact not found.");
        }
    }


    public double calculateConstactCost(){
        StandardCostCalculator calculator = new StandardCostCalculator();
        double emailCost = calculator.calculateCost(emails, IContactCostCalculator.ContactType.EMAIL);
        double callCost = calculator.calculateCost(minuto, IContactCostCalculator.ContactType.CELLNUMBER);
        return emailCost + callCost;
    }



    public void printAllContacts() {
        for (Contact contact : contacts) {
            System.out.println(contact);
        }
    }

    public void readFile(String fileName) {
        try (BufferedReader br = new BufferedReader(new FileReader(fileName))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split("\t");
                if (parts.length <= 5) {
                    String nome = parts[0] + " " + parts[1];
                    String telefone = parts[2];
                    String email = parts[3];
                    String data = parts[4];
                    
                    Contact contact = new Contact(nome, Integer.parseInt(telefone), email, data);
                    addContact(contact);
                }
            }
        } catch (IOException e) {
            System.out.println("Erro ao ler o ficheiro: " + e.getMessage());
        }
    }



    public void writeFile(String file) {
        for (Contact contact : contacts) {
            try (java.io.FileWriter fw = new java.io.FileWriter(file, true)) {
                fw.write(contact.toString() + System.lineSeparator());
            } catch (IOException e) {
                System.out.println("Erro ao escrever no ficheiro: " + e.getMessage());
            }
        }
    }


}
