import java.time.LocalDate;
import java.util.LinkedList;

public class PetsAnimal extends Animal{

    public PetsAnimal(String name, LocalDate birthDay, LinkedList<Command> commandList, String animalsType,
            String animalSpecies) {
        super(name, birthDay, commandList, animalsType, animalSpecies);
    }
    
}
