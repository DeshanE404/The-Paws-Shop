/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package thepawsshop;

/**
 *
 * @author Deshan-Notebook
 */
public class ThePawsShop {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        LoadingScreen ld = new LoadingScreen();
    ld.setVisible(true);
    try{
        for(int x=0;x<=100;x++)
        {
            Thread.sleep(30);
            ld.ldpres.setText(Integer.toString(x)+"%");
            ld.ldpros.setValue(x);
        }
   Loginmenu lbmen= new Loginmenu();
   lbmen.setVisible(true);
   ld.setVisible(false);
    }catch (Exception ex)
    {
}
    }
        // TODO code application logic here
    }
    
