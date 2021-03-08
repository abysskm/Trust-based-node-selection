package action;

import java.awt.Color;
import java.io.IOException;

import javax.swing.JFrame;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;
import javax.swing.UIManager.LookAndFeelInfo;

public class Secure_Routing_GUI {

	public static void main(String args[]) throws IOException 
	{

		JFrame.setDefaultLookAndFeelDecorated(true);
	    SwingUtilities.invokeLater(new Runnable() 
	    {
	      public void run() 
	      {
	    	  	try 
	        {
	        	UIManager.put("nimbusBase", new Color(128, 128, 0));
	        	UIManager.put("nimbusBlueGrey", new Color(166, 125, 61));
	        	UIManager.put("control", new Color(216, 216, 190));
	        	UIManager.put("nimbusSelectionBackground", new Color(169,46,34));
	        	UIManager.put("nimbusFocus", new Color(255,220,35));

	        	 for (LookAndFeelInfo info : UIManager.getInstalledLookAndFeels())
	        	 {
	        	        if("Nimbus".equals(info.getName())) 
	        	        {
	        	            UIManager.setLookAndFeel(info.getClassName());
	        	            break;
	        	        }
	        	    }
	        	 
	        	 new Secure_Routing().setVisible(true);
		        
	        } catch (Exception e) {System.out.println("Substance Graphite failed to initialize");}
	        
	      }
	    });
	}
}
