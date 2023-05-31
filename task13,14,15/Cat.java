import java.time.LocalDate;
import java.util.LinkedList;

public class Cat extends PetsAnimal{

    public Cat(String name, LocalDate birthDay, LinkedList<Command> commandList, String animalsType,
            String animalSpecies) {
        super(name, birthDay, commandList, animalsType, animalSpecies);
    }
    
}
