import javax.xml.bind.SchemaOutputResolver;
import java.io.*;
import java.util.*;

/**
 * This class creates Tray and Block objects for a sliding blocks puzzle and
 */

public class Solver {
    // Initialize new occupied object in solver class, that also stores the blocks.
    static Block goalBlock;
    static List<Block> goalBlocks = new ArrayList<Block>();
    static Tray myTray;
    static final int UP = 0, DOWN = 1, LEFT = 2, RIGHT = 3;
    static LinkedList<Tray> trays;
    static Stack<Move> moves = new Stack<Move>();
    static boolean isInTray;
    static TrayGUI GUI;


    public static void main(String[] args) throws FileNotFoundException {
        // Initialize a scanner object, that scans the file and saves the first to integer into a new occupied object, myTray
        Scanner in = new Scanner(new File(args[0]));
        Scanner goal = new Scanner(new File(args[1]));
        while (in.hasNextInt()) {
            myTray = new Tray(in.nextInt(), in.nextInt());
            // Saves the next integers in the file into new block objects, for every fourth integer
            while (in.hasNextInt()) {
                Block myBlock = new Block(in.nextInt(), in.nextInt(), in.nextInt(), in.nextInt());
                myTray.blocks.add(myBlock);
            }
        }

        while (goal.hasNextInt()) {
            goalBlock = new Block(goal.nextInt(), goal.nextInt(), goal.nextInt(), goal.nextInt());
            goalBlocks.add(goalBlock);
        }


        for(Block goalBlock : goalBlocks){
            isInTray = false;
            for(Block block : myTray.blocks){
                if (goalBlock.hashCode()==block.hashCode()){
                    isInTray = true;
                }
            }
        }
        if(isInTray){System.out.println("is solved");}

        myTray.isOK();
        myTray.shellSortBlocks();

        trays = new LinkedList<Tray>();
        System.out.println(myTray.toString());

        GUI = new TrayGUI(myTray);

        boolean solved = solve(myTray, 0);
        if(!solved){System.out.println("no solution");}
        for(int i = 0; i<moves.size(); i++)
            System.out.println(moves.pop());
    }

    private static boolean solve(Tray myTray, int level) {
        GUI.paintBlocks(myTray);
        //System.out.println("-------------------------------------------------------------------------------------------------------------------------------------------------------");
        //System.out.println("Solving tray: " + myTray + " at level: " + level);
        //new printOccupied(myTray);
        System.out.println("-" + level + "- " + myTray.move);
        if(level>500){
            return false;
        }
        for(Block goalBlock : goalBlocks){
            isInTray = false;
            for(Block block : myTray.blocks){
                if (goalBlock.hashCode()==block.hashCode()){
                    isInTray = true;
                }
            }
        }
        if(isInTray){
            System.out.println("is solved");
            return true;
        }
        //moves.push(myTray.move);
        trays.add(myTray);

        for (Move move : myTray.legalMoves()) {
            moves.push(move);
            Tray newTray = new Tray(move, myTray);
            if (!trays.contains(newTray) && solve(newTray, level + 1)) {
                return true;
            }
            //System.out.println("Moves already excists");
        }
        moves.pop();
        return false;
    }
}