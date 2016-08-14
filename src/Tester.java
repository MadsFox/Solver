import java.util.Scanner;
import java.util.Stack;

public class Tester {
    static Stack<Move> moves = new Stack<Move>();
    static Tray newTray;
    static Tray myTray;

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        while (in.hasNextInt()){
            moves.add(new Move(in.nextInt(), in.nextInt(), in.nextInt(), in.nextInt()));
        }

        myTray = Solver.trays.get(0);

        TrayGUI GUI = new TrayGUI(myTray);

        for (int i = 0; i<moves.size(); i++){
            newTray = new Tray(myTray, moves.get(i));
            GUI.paintBlocks(newTray);
        }
    }
}
