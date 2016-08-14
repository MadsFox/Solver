import java.util.ArrayList;

public class Move {
    int fromColumn;
    int fromRow;
    int toColumn;
    int toRow;

    Move(int fromRow, int fromColumn, int toRow, int toColumn) {
        this.fromColumn = fromColumn;
        this.fromRow = fromRow;
        this.toColumn = toColumn;
        this.toRow = toRow;

    }
    @Override
    public String toString(){
        return fromRow + " " + fromColumn + " " + toRow + " " + toColumn;
    }
}