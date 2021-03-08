package action;
/*
 * The class is used to maintain all the information 
 * about the individual host eg(position, name, and windowSize)
 */

import java.awt.Point;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Vector;

public class Host implements Serializable
{	
	private static final long serialVersionUID = 1654566548251023645L;
	public Point position;// x,y position of the pixel
	public String name; // name of the host
	 

	public int host_id; //set unique host id to each host
	
	public Host()
	{
	}
	public Host(Point pos,String nam,int id)
	{
		
		position = pos; 
		name = nam;
		host_id=id;
	
	}
	
	
}