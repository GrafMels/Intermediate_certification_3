import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.Scanner;

public class View {
    static private Scanner sc = new Scanner(System.in, "Cp866");

    public static Integer startMenu() {
        System.out.println(
                "1: Показать список животных\n2: Показать список команд которым можно обучить животных\n3: Добавить новое животное\n4: Добавить новую команду\n\n0:Выход");
        System.out.print("Выберите пункт и введите нужную цифру: ");
        int answer = sc.nextInt();
        return answer;
    }

    public static String loadingFromFile(String fileName) {
        String allFile = "";
        try (FileReader fr = new FileReader(new File(fileName))) {
            Scanner sca = new Scanner(fr);
            while (sca.hasNextLine()) {
                allFile = allFile + sca.nextLine() + ":";
            }
            sca.close();
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("XXX");
        }

        return allFile;
    }

    public static void saveFiles(CommandList commandlist, AnimalList animallist) {
        File file = new File("AnimalList.txt");
        try (FileWriter fw = new FileWriter(file)) {
            fw.write(animallist.toPrint(commandlist));
        } catch (Exception e) {
            // TODO: handle exception
        }
        

        String[] commandString = commandlist.toString().split(",");
        String fullCommandString = "";
        for (int i = 0; i < commandString.length; i++) {
            if (i == commandString.length) {
                fullCommandString = fullCommandString + commandString[i];
            } else {
                fullCommandString = fullCommandString + commandString[i] + "\n";
            }
        }
        file = new File("CommandList.txt");
        try (FileWriter fw = new FileWriter(file)) {
            fw.write(fullCommandString);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    public static Animal newAnimal(CommandList fullCommandlist) {
        sc.nextLine();

        System.out.println("Введите имя животного: ");
        String name = sc.nextLine();

        System.out.println("Введите дату рождения животного(в формате \"dd-mm-yyyy\"): ");
        String[] date = sc.nextLine().split("-");
        LocalDate birthDay = LocalDate.of(Integer.parseInt(date[2]), Integer.parseInt(date[1]),
                Integer.parseInt(date[0]));

        String[] commandString = fullCommandlist.toString().split(",");
        String fullCommandString = "";
        int i = 0;
        for (String string : commandString) {
            i++;
            fullCommandString = fullCommandString + i + "." + string + "\n";
        }
        fullCommandString = fullCommandString + "0.Выход" + "\n";
        int condition = 0;
        LinkedList<Integer> commands = new LinkedList<Integer>();
        i = 0;
        do {
            System.out.printf("Введите номера команд которые животное знает: \n%s : ", fullCommandString);
            if (sc.hasNextInt()) {
                condition = sc.nextInt();
                if (condition != 0) {
                    commands.add(condition);
                }
                i++;
            }
        } while (condition != 0);
        CommandList commandlist = new CommandList();
        for (Integer command : commands) {
            Command newCommand = fullCommandlist.getCommand(command);
            commandlist.addCommand(newCommand);
        }

        System.out.print("Введите вид животного(Цифрой): \n1.Cat\n2.Dog\n3.Hamster\n4.Donkey\n5.Horse\n6.Camel\n : ");
        int animalSpecies = 0;
        if (sc.hasNextInt()) {
            animalSpecies = sc.nextInt();
        }

        Animal newAnimal = new Camel();
        if (animalSpecies == 1) {
            newAnimal = new Cat(name, birthDay, commandlist, "petsAnimals", "Cat");
        } else if (animalSpecies == 2) {
            newAnimal = new Dog(name, birthDay, commandlist, "petsAnimals", "Dog");
        } else if (animalSpecies == 3) {
            newAnimal = new Hamster(name, birthDay, commandlist, "petsAnimals", "Hamster");
        } else if (animalSpecies == 4) {
            newAnimal = new Donkey(name, birthDay, commandlist, "packAnimals", "Donkey");
        } else if (animalSpecies == 5) {
            newAnimal = new Horse(name, birthDay, commandlist, "packAnimals", "Horse");
        } else if (animalSpecies == 6) {
            newAnimal = new Camel(name, birthDay, commandlist, "packAnimals", "Camel");
        } else {
            // Сюда добавить исключение
        }
        return newAnimal;
    }
}