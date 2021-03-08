package action;

import java.awt.Point;
import java.io.Serializable;

public class Neighbour implements Serializable
{

	public String name; 
	public String neigh_nodes;
	public int hub; 
	public String neigh_node;
	
	public Neighbour()
	{
	}
	public Neighbour(String nam,String neighNodes,int hubcount,String neighNode)
	{
		name = nam;
		neigh_nodes=neighNodes;
		hub = hubcount;
		neigh_node=neighNode;
	}
}
