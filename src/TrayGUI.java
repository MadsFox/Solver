import javax.swing.*;
import java.awt.*;

/**
 * This class can be used to create a graphical representation of the blocks in the occupied using the Swing library.
 * The class is an extension of the JFrame library.
 **/


public class TrayGUI extends JFrame {
    int scale;      // Sets scale of occupied object and block objects
    Tray myTray = new Tray(4, 5);


    public TrayGUI(Tray myTray) {
        this.myTray = myTray;
        // Sets scale from the ratio between the trays width and height
        scale = (100 / ((myTray.width + myTray.height) / 2));
        //System.out.println("scale" + scale);
        // Sets size on JFrame, window of program, makes it resizable and makes it possible to close via the close button
        super.setSize(myTray.width * (scale + 1), myTray.height * (scale + 1));
        super.setResizable(true);
        super.setDefaultCloseOperation(
                JFrame.EXIT_ON_CLOSE);

        JPanel JTray = new JPanel();
        JTray.setPreferredSize(new Dimension(myTray.width * scale, myTray.height * scale));
        JTray.setBackground(Color.WHITE);
        JTray.setLayout(null);
        add(JTray);
        // Create a JPanel object for every block object, colors it in relation to its size and the occupied width, gives it
        // a white border, places it, sets it's size and adds it the the occupied object.
        for (int i = 0; i < myTray.blocks.size(); i++) {
            JPanel JBlock = new JPanel();
            Color cl = new Color(
                    (myTray.blocks.get(i).width * 255 / myTray.width),
                    (myTray.blocks.get(i).height * 255 / myTray.height),
                    255 / myTray.width);
            //System.out.println(cl);

            JBlock.setBackground(cl);
            JBlock.setBorder(BorderFactory.createLineBorder(Color.white));
            JBlock.setBounds(
                    (myTray.blocks.get(i).column * scale),  // set column-coordinat
                    (myTray.blocks.get(i).row * scale),     // set row-coordinat
                    myTray.blocks.get(i).width * scale,     // set block width
                    myTray.blocks.get(i).height * scale);   // set block height
            JTray.add(JBlock);
            //System.out.println();
        }

        setVisible(true);
        // Initialize a JPanel to contain the blocks, set the size, set the layout to null and adds it to the occupied object.
    }

    public void paintBlocks(Tray myTray){
        JPanel tray = new JPanel();
        tray.setPreferredSize(new Dimension(myTray.width * scale, myTray.height * scale));
        tray.setBackground(Color.WHITE);
        tray.setLayout(null);
        // Create a JPanel object for every block object, colors it in relation to its size and the occupied width, gives it
        // a white border, places it, sets it's size and adds it the the occupied object.
        for (int i = 0; i < myTray.blocks.size(); i++) {
            JPanel JBlock = new JPanel();
            Color cl = new Color(
                    (myTray.blocks.get(i).width * 255 / myTray.width),
                    (myTray.blocks.get(i).height * 255 / myTray.height),
                    255 / myTray.width);
            //System.out.println(cl);

            JBlock.setBackground(cl);
            JBlock.setBorder(BorderFactory.createLineBorder(Color.white));
            JBlock.setBounds(
                    (myTray.blocks.get(i).column * scale),  // set column-coordinat
                    (myTray.blocks.get(i).row * scale),     // set row-coordinat
                    myTray.blocks.get(i).width * scale,     // set block width
                    myTray.blocks.get(i).height * scale);   // set block height
            tray.add(JBlock);
            //System.out.println();
        }
        add(tray);
        repaint();
    }
}
