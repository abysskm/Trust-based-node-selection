package action;

import java.awt.image.BufferedImage;
import java.awt.image.WritableRaster;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import javax.imageio.ImageIO;


public class Test 
{
	public static BufferedImage readImage(String fileLocation)
	{
        BufferedImage img = null;
        try 
        {
            img = ImageIO.read(new File(fileLocation));
        } catch (IOException e) 
        {
            e.printStackTrace();
        }
        return img;
    }
	public static ArrayList processImage(BufferedImage image)
	{
		
		
		int width = image.getWidth();
        int height = image.getHeight();
         	BufferedImage I1 = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
           
            WritableRaster wr1 = I1.getRaster();
          int w=width/4;int h=height/4;
            int[] a = new int[4];
            
            ArrayList<Integer>list=new ArrayList<Integer>();
            for(int i=0;i<16;i++)
            {
            	list.add(i);
            }
            Collections.shuffle(list);
       System.out.println(list);
       int x=0,y=0;
       
          for(int m=0;m<16;)
          {
        	 int d= list.get(m);
        	 int q=d/4;q=q*h;
        	 int r=d%4;r=r*w;
        	 
              for (int i = r; i < (r+w); i++)
	          {
	                for (int j = q; j <(q+h); j++) 
	                {
	                
	                   	int pixel = image.getRGB(i, j);  
	                   	a=getARGBPixelData(pixel);
	                    wr1.setPixel(x, y, a);
	                    y++;
	                }
	                y=(m%4)*h;          
	                x++;
	           }
              m++;     
              x=(m/4)*w;y=(m%4)*h;
            }      
            try 
            {
            	ImageIO.write(I1, "png", new File("screnary11.jpg"));
            	
            }
            catch (IOException e)
            {
            	System.err.println("image not saved.");
            	e.printStackTrace();
            }
        return null;
       
	}
	public static int[] getARGBPixelData(int pixel)
	{
		int[] a = new int[4];
		try
		{
			int alpha = (pixel >> 24) & 0x000000FF;
			int red = (pixel >> 16) & 0x000000FF;
			int green = (pixel >>8 ) & 0x000000FF;
			int blue = (pixel) & 0x000000FF;
			a[0]=red;
        	a[1]=green;
        	a[2]=blue;
        	a[3]=alpha;
		}
		catch(Exception e)
		{
			System.out.println("Error is in ImageProcess getARGBPixelData(int pixel) "+e);
		}
		return a;
	}
	
	public static void main(String[] args) 
	{
		BufferedImage img=Test.readImage("screnary.jpg");
		Test.processImage(img);
		
	}
}
