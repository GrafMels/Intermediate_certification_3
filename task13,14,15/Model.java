import java.time.LocalDate;

public class Model {
    public static AnimalList loadingFromAnimalList(CommandList fullCommandlist) {
        AnimalList animallist = new AnimalList();
        String allFile = View.loadingFromFile("AnimalList.txt");
        String[] allLines = allFile.split(":"); 
        for (String line : allLines) {
            String[] oneLine = line.split(" ");
            String[] date = oneLine[1].split("-");
            LocalDate birthDay = LocalDate.of(Integer.parseInt(date[2]), Integer.parseInt(date[1]), Integer.parseInt(date[0]));

            String[] commands = oneLine[2].split(",");
            CommandList commandlist = new CommandList();
            for (String command : commands) {
                commandlist.addCommand(fullCommandlist.getCommand(Integer.parseInt(command)));
            }
            Animal newAnimal = new Camel();
            if (oneLine[4].equals("Cat")) {
                newAnimal = new Cat(oneLine[0], birthDay, commandlist, oneLine[3], oneLine[4]);
            } else if (oneLine[4].equals("Dog")) {
                newAnimal = new Dog(oneLine[0], birthDay, commandlist, oneLine[3], oneLine[4]);
            } else if (oneLine[4].equals("Hamster")) {
                newAnimal = new Hamster(oneLine[0], birthDay, commandlist, oneLine[3], oneLine[4]);
            } else if (oneLine[4].equals("Donkey")) {
                newAnimal = new Donkey(oneLine[0], birthDay, commandlist, oneLine[3], oneLine[4]);
            } else if (oneLine[4].equals("Horse")) {
                newAnimal = new Horse(oneLine[0], birthDay, commandlist, oneLine[3], oneLine[4]);
            } else if (oneLine[4].equals("Camel")) {
                newAnimal = new Camel(oneLine[0], birthDay, commandlist, oneLine[3], oneLine[4]);
            } else {
                //Сюда добавить исключение
            }
            animallist.addAnimal(newAnimal);
             
            
        }
        return animallist;
    }

    public static CommandList loadingFromCommandList() {
        CommandList commandlist = new CommandList();
        String allFile = View.loadingFromFile("CommandList.txt");
        String[] allLines = allFile.split(":");
        for (int i = 0; i < allLines.length; i++) {
            Command newCommand = new Command(allLines[i]);
            commandlist.addCommand(newCommand);
        }
        return commandlist;
    }
}
