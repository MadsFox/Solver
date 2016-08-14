import java.util.Objects;

/**
 * This class can be used to create a Block object that consists of a height, a width, a row and a column.
 */


public class Block {
    int column, row, width, height;

    public Block(int height, int width, int row, int column) {
        this.column = column;
        this.row = row;
        this.width = width;
        this.height = height;
    }

    public void move(int direction){
        switch (direction) {
            case Solver.UP:
                row--;
                break;
            case Solver.DOWN:
                row++;
                break;
            case Solver.LEFT:
                column--;
                break;
            case Solver.RIGHT:
                column++;
                break;
        }
    }
    @Override
    public int hashCode(){
        int hash = 1;
        hash = hash * 13 + column;
        hash = hash * 17 + row;
        hash = hash * 19 + width;
        hash = hash * 23 + height;
        return hash;
    }

    @Override
    public String toString(){
        return height + " " + width + " " + row + " " + column;
    }
    @Override
    public boolean equals(Object obj){
        Block block = (Block)obj;
        return this.width == block.width &&
                this.height == block.height &&
                this.row == block.row &&
                this.column == block.column;
    }

    int toInt(){
        return column*1000+row*100+height*10+width;
    }
}

