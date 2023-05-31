import java.util.LinkedList;

public class CommandList {
    private LinkedList<Command> commandList = new LinkedList<Command>();

    public void addCommand(String name) {
        Command newCommand = new Command(name);
        commandList.add(newCommand);
    }

    public String printCommands() {
        String fullList = "";
        for (int i = 0; i < commandList.size(); i++) {
            fullList = fullList + (i+1) + commandList.get(i).getName();
        }
        return fullList;
    }
}
