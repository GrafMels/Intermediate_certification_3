import java.time.LocalDate;
import java.util.LinkedList;

abstract class Animal {
    protected String name = "";
    protected LocalDate birthDay = LocalDate.of(1, 1, 1);
    protected LinkedList<Command> commandList = new LinkedList<Command>();
    protected String animalsType = "";
    protected String animalSpecies = "";

    public Animal(String name, LocalDate birthDay, LinkedList<Command> commandList, String animalsType,
            String animalSpecies) {
        this.name = name;
        this.birthDay = birthDay;
        this.commandList = commandList;
        this.animalsType = animalsType;
        this.animalSpecies = animalSpecies;
    }

    public String getAnimalSpecies() {
        return animalSpecies;
    }

    public String getAnimalsType() {
        return animalsType;
    }

    public Command getCommand(Integer id) {
        return commandList.get(id);
    }

    public void addCommand(Command newCommand) {
        commandList.add(newCommand);
    }

    public void removeCommand(Integer id) {
        commandList.remove(commandList.get(id));
    }
    
    public LocalDate getBirthDay() {
        return birthDay;
    }    
    
    public String getName() {
        return name;
    }

}