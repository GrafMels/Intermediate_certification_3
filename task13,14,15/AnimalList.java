import java.util.LinkedList;
public class AnimalList {
    private LinkedList<Animal> animlList = new LinkedList<Animal>();
    
    public void addAnimal(Animal newAnimal) {
        animlList.add(newAnimal);
    }

    @Override
    public String toString() {
        String fullList = "";
        for (int i = 0; i < animlList.size(); i++) {
            fullList = fullList + (i+1) + " " + animlList.get(i) + "\n";
        }
        return fullList;
    }

    public String toPrint(CommandList commandlist) {
        String fullList = "";
        for (int i = 0; i < animlList.size(); i++) {
            fullList = fullList + animlList.get(i).toString(commandlist) + "\n";
        }
        return fullList;
    }
}
