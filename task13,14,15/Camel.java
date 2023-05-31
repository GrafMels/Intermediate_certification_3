import java.time.LocalDate;

public class Camel extends PackAnimal{

    public Camel(String name, LocalDate birthDay, CommandList commandList, String animalsType,
            String animalSpecies) {
        super(name, birthDay, commandList, animalsType, animalSpecies);
    }

    protected Camel() {

    }
    
}
