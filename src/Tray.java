import java.util.*;

/**
 * This class can be used to create a occupied object that consists of a width and a height used to create a 2D array,
 * an ArrayList to contain block object and a isOK method that throws a IllegalStateException if any of the blocks
 * are overlapping or a ArrayIndexOutOfBoundsException if any of the blocks are outside the occupied.
 */

public class Tray {
    List<Block> blocks = new ArrayList<Block>();
    int width, height;
    boolean[][] occupied;
    Tray parent;
    Move move;

    //Constructor
    public Tray(int height, int width) {
        this.width = width;
        this.height = height;
        this.occupied = new boolean[width][height];
        this.blocks = new ArrayList<Block>();
    }

    //Constructor
    public Tray(Move move, Tray parent) {
        this.parent = parent;
        this.width = parent.width;
        this.height = parent.height;
        this.occupied = new boolean[width][height];
        this.blocks = new ArrayList<Block>();
        this.move = move;

        //System.out.println("Blocks copied to new arraylist:");
        for(int block = 0; block<parent.blocks.size(); block++){
            //System.out.println(parent.blocks.get(block));
            blocks.add(new Block(parent.blocks.get(block).height, parent.blocks.get(block).width, parent.blocks.get(block).row, parent.blocks.get(block).column));
        }

        // Works
        //System.out.println(blocks.size() + " Blocks");
        for(Block block : blocks){
            //System.out.println(block);
            if(move.fromColumn == block.column && move.fromRow == block.row){
                //System.out.print("Block: " + block + " moved ");
                block.column = move.toColumn;
                block.row = move.toRow;
                //System.out.println("to: " + block.row + " " + block.column);
            }
        }
        shellSortBlocks();
        this.isOK();
        // works
        /*for (int h = 0; h<parent.height; h++){
            System.out.println();
            System.out.print("tray after move: ");
            for (int w = 0; w<parent.width; w++){
                //occupied[w][h] = parent.occupied[w][h];
                if(occupied[w][h])
                System.out.print("*");
                else
                System.out.print("-");
            }
        }*/
    }

    //Places all the current blocks in a 2D array and returns false if the any exceptions or overlapping
    public void isOK() {
        for (Block block : blocks) {
            //System.out.println("Before checking if blocks isOK: " + block);
            /*for (int y = 0; y<height; y++) {
                for (int x = 0; x < width; x++) {
                    if(occupied[x][y]) System.out.print("*");
                    else System.out.print("-");
                }
                System.out.println();
            }*/
            for (int y = block.row; y < block.row + block.height; y++) {
                for (int x = block.column; x < block.column + block.width; x++) {
                    try {
                        //System.out.println("Block: " + i + "  pre: " + column + "," + row + " : " + occupied[column][row]);
                        if (!occupied[x][y]) {
                            occupied[x][y] = true;
                            //System.out.println("post: " + column + ", " + row + " : " + occupied[column][row]);
                        } else if (occupied[x][y]) {
                            throw new IllegalStateException("Overlapping " + block);
                        }
                    } catch (ArrayIndexOutOfBoundsException e) {
                        throw new IllegalStateException("Block out of tray" + block);
                    }
                }
            }
            /*System.out.println("After checking if blocks isOK: " + block);
            for (int y = 0; y<height; y++) {
                for (int x = 0; x < width; x++) {
                    if(occupied[x][y]) System.out.print("*");
                    else System.out.print("-");
                }
                System.out.println();
            }
            System.out.println();*/
        }

    }

    @Override
    public int hashCode() {
        int i = 1;
        int hash = 1;
        for (Block block : blocks) {
            hash += block.hashCode() * i++;
        }
        return hash;
    }

    List<Move> legalMoves() {
        List<Move> moves = new ArrayList<Move>();
        boolean legal;
        for (Block block : this.blocks) {
            //System.out.println();
            //System.out.print("legal moves for block: " + block);
            for (int direction = 0; direction < 4; direction++) {
                switch (direction) {
                    case Solver.UP:
                        if (block.row-1<0)
                            continue;
                        legal = true;
                        for (int c = block.column; c < block.column + block.width; c++){
                            //System.out.print("  UP:    " + this.occupied[c][block.row - 1]);
                            if(this.occupied[c][block.row-1]) {
                                legal = false;
                                break;
                            }}
                        if (legal)
                            moves.add(new Move(block.row, block.column, block.row-1, block.column));
                        break;
                    case Solver.DOWN:
                        if (block.row+block.height>=height)
                            continue;
                        legal = true;
                        for (int c = block.column; c < block.column + block.width; c++){
                            //System.out.print("  DOWN:  " + this.occupied[c][block.row + 1]);
                            if(this.occupied[c][block.row+block.height]) {
                                legal = false;
                                break;
                            }}
                        if (legal)
                            moves.add(new Move(block.row, block.column, block.row+1, block.column));
                        break;
                    case Solver.LEFT:
                        if (block.column-1<0)
                            continue;
                        legal = true;
                        for (int r = block.row; r < block.row + block.height; r++){
                            //System.out.print("  LEFT:  " + this.occupied[block.column - 1][r]);
                            if(this.occupied[block.column-1][r]) {
                                legal = false;
                                break;
                            }}
                        if (legal)
                            moves.add(new Move(block.row, block.column, block.row, block.column-1));
                        break;
                    case Solver.RIGHT:
                        if (block.column+block.width>=width)
                            continue;
                        legal = true;
                        for (int r = block.row; r < block.row + block.height; r++){
                            //System.out.print("  RIGHT: " + this.occupied[block.column + 1][r]);
                            if(this.occupied[block.column+block.width][r]) {
                                legal = false;
                                break;
                            }}
                        if (legal)
                            moves.add(new Move(block.row, block.column, block.row, block.column+1));
                        break;
                }
            }
        }
        return moves;
    }
    @Override
    public String toString(){
        return "" + blocks;
    }
    @Override
    public boolean equals(Object obj){
        boolean isEqual = true;
        Tray otherTray = (Tray)obj;
        //System.out.println("COMPARING NEW TRAY");
        for (int i = 0; i<this.blocks.size(); i++) {
            //System.out.println("Comparing myTray Block " + i + ": " + blocks.get(i));
            for (int j = 0; j < otherTray.blocks.size(); j++) {
                //System.out.println("to newTray Block " + j + ": " + otherTray.blocks.get(j) + " are equal: " + blocks.get(i).equals(otherTray.blocks.get(j)));
                if (this.blocks.get(i).equals(otherTray.blocks.get(j))) {
                    isEqual = true;
                    break;
                }else {
                    isEqual = false;
                }
            }
            if(!isEqual){
                //System.out.println("myTray are NOT equal to newTray!");
                return false;}
        }
        //System.out.println("myTray ARE equal to newTray!");
        return isEqual;
    }

    void shellSortBlocks(){
        for (int h = blocks.size()/2; h > 0; h = h == 2 ? 1 : (int)(h/2.2)){
            sortBlocks(blocks, h);
        }
    }

    void sortBlocks(List<Block> blocks, int h){
        for (int p = h; p < blocks.size(); p++){
            Block tmp = blocks.get(p);
            int j = p;
            for (; j >= h && (tmp.toInt() - blocks.get(j - h).toInt()) < 0; j -= h){
                blocks.set(j, blocks.get(j-h));
            }
            blocks.set(j, tmp);
        }

    }
}