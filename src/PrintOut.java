import java.util.ArrayList;
import java.util.List;

/**
 * Created by madssaustrupkristensen on 27/04/15.
 */
public class PrintOut {
    Tray myTray;
    List<Block> goalBlocks = new ArrayList<Block>();
    List<Tray> trays = new ArrayList<Tray>();
    boolean isInTray;

    public PrintOut(){}

private boolean solve(Tray myTray, int level) {
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
        return true;
    }

    trays.add(myTray);

    for (Move move : myTray.legalMoves()) {
        Tray newTray = new Tray(move, myTray);
        if (!trays.contains(newTray) && solve(newTray, level + 1){
            if (level > 500) {
                return false;
            }
            for (Block goalBlock : goalBlocks) {
                isInTray = false;
                for (Block block : myTray.blocks) {
                    if (goalBlock.hashCode() == block.hashCode()) {
                        isInTray = true;
                    }
                }
            }
            if (isInTray) {
                return true;
            }

            trays.add(myTray);

            for (Move move : myTray.legalMoves()) {
                Tray newTray = new Tray(move, myTray);
                if (!trays.contains(newTray) && solve(newTray, level + 1) {
                    if (level > 500) {
                        return false;
                    }
                    for (Block goalBlock : goalBlocks) {
                        isInTray = false;
                        for (Block block : myTray.blocks) {
                            if (goalBlock.hashCode() == block.hashCode()) {
                                isInTray = true;
                            }
                        }
                    }
                    if (isInTray) {
                        return true;
                    }

                    trays.add(myTray);

                    for (Move move : myTray.legalMoves()) {
                        Tray newTray = new Tray(move, myTray);
                        if (!trays.contains(newTray) && solve(newTray, level + 1)) {
                            return true;
                        }
                    }
                    return false;
                }){return true;}
            }
            return false;
        })
        {return true;}
    }
    return false;
}


}
