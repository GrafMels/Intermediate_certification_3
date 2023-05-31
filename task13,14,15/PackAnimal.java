import java.time.LocalDate;
import java.util.LinkedList;

abstract class PackAnimal extends Animal{

    public PackAnimal(String name, LocalDate birthDay, LinkedList<Command> commandList, String animalsType,
            String animalSpecies) {
        super(name, birthDay, commandList, animalsType, animalSpecies);
    }
    
}
