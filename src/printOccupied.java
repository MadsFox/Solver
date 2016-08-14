import javax.xml.bind.SchemaOutputResolver;

/**
 * Created by Computer on 24-04-2015.
 */
public class printOccupied {
    int height;
    int width;
    boolean[][] occupied;

    public printOccupied(Tray myTray){
        this.width = myTray.width;
        this.height = myTray.height;
        occupied = new  boolean[width][height];
        for (int h = 0; h<height; h++){
            for (int w = 0; w<width; w++){
                //ccupied[w][h] = parent.occupied[w][h];
                if(myTray.occupied[w][h])
                    System.out.print("*");
                else
                    System.out.print("-");
            }
            System.out.println();
        }
    }
}
