public class Controller {
    private static CommandList commandlist;
    private static AnimalList animallist;

    public static void start(){
        commandlist = Model.loadingFromCommandList();
        animallist = Model.loadingFromAnimalList(commandlist);
        int condition = 0;
        do {
            condition = View.startMenu();
            if (condition != 0) {
                mainDivarication(condition);
            }
            View.saveFiles(commandlist, animallist);
        } while (condition != 0);
    }

    private static void mainDivarication(int condition) {
        if (condition == 1) {
            System.out.println(animallist);
        } else if (condition == 2) {
            String[] command = commandlist.toString().split(",");
            for (int i = 0; i < command.length; i++) {
                System.out.println(command[i]);
            }
        } else if (condition == 3) {
            animallist.addAnimal(View.newAnimal(commandlist));
        } else if (condition == 4) {

        } else if (condition == 5) {

        }
    }
}
