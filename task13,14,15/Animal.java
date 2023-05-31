import java.time.format.DateTimeFormatter;
import java.time.LocalDate;

abstract class Animal {
    protected String name = "";
    protected LocalDate birthDay = LocalDate.of(1, 1, 1);
    protected CommandList commandList = new CommandList();
    protected String animalsType = "";
    protected String animalSpecies = "";

    protected Animal(String name, LocalDate birthDay, CommandList commandList, String animalsType,
            String animalSpecies) {
        this.name = name;
        this.birthDay = birthDay;
        this.commandList = commandList;
        this.animalsType = animalsType;
        this.animalSpecies = animalSpecies;
    }

    protected Animal() {

    }

    public String getAnimalSpecies() {
        return animalSpecies;
    }

    public String getAnimalsType() {
        return animalsType;
    }

 

    public void addCommand(Command newCommand) {
        commandList.addCommand(newCommand);
    }

    
    public LocalDate getBirthDay() {
        return birthDay;
    }    
    
    public String getName() {
        return name;
    }

    
    public String toString(CommandList commandlist) {
        String animalInf = name + " " + birthDay.format(DateTimeFormatter.ofPattern("dd-MM-yyyy")) + " " +  commandList.toPrint(commandlist) + " " +  animalsType + " " +  animalSpecies;
        return animalInf;
    }

    @Override
    public String toString() {
        String animalInf = name + " " + birthDay.format(DateTimeFormatter.ofPattern("dd-MM-yyyy")) + " " +  commandList + " " +  animalsType + " " +  animalSpecies;
        return animalInf;
    }
}