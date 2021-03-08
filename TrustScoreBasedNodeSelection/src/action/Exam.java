package action;


import java.awt.Point;
import java.util.*;
import javax.swing.JOptionPane;


public class Exam 
{
	public static HostContainer nt = new HostContainer();
	static Map<String, String> map=new HashMap<String, String>();
	
	public static void findNeighbour(int n,String src_node)
	{

		UserDAO dao=new UserDAO();
		String neighbor_name="";
		Iterator treeTraverse = nt.getIterator();  
		
		while (treeTraverse.hasNext())
		{
			Host host = (Host) treeTraverse.next(); Point p=host.position;
			String name=host.name;
			int xaxis=p.x;
			int yaxis=p.y;
			
			Iterator tree = nt.getIterator();  
			while (tree.hasNext())
			{
				Host host1 = (Host) tree.next(); Point p1=host1.position;
				String n_name=host.name;
				int xaxis1=p.x;
				int yaxis1=p.y;
				
				double dist= distance(xaxis, yaxis,xaxis1, yaxis1);
				if(dist<=n && dist!=0)
				{
				   neighbor_name=neighbor_name+"~"+n_name;
				}
			}
			 if(neighbor_name.trim().length()!=0)
			 {
				 neighbor_name=neighbor_name.substring(1, neighbor_name.length());
			//	 dao.addNeighbourNodeInfo(name, neighbor_name);
				 String b;
				 if(src_node.equals(name.trim()))
				 {
					 b=neighbor_name+"@"+0+"@"+name;
				 }
				 else
				 {
					 b=neighbor_name+"@"+10000+"@"+null;
				 }
				 map.put(name, b);
				 neighbor_name="";
			 }
		}
	}
	
	static ArrayList<String> neigh_nodes=new ArrayList<String>();
	static ArrayList<String> next_node=new ArrayList<String>();
	static int rotation=0;
	static String output;
	public static void findShortestPath(int n,String source_node,String destination_node)
	{
		boolean flag=false;
		findNeighbour(n, source_node);
		int count=1;
		for(Map.Entry entry : map.entrySet())
		{
		    if(destination_node.equals(entry.getKey()))
		    {
		    	flag=true;
		    }
		}
		if(flag)
		{
			String test=map.get(source_node);
			String node_det[]=test.split("@");
			next_node.add(source_node.trim());
			neigh_nodes.add(node_det[0]);
			for (int k=0;k<neigh_nodes.size();k++)
			{
				String h=(String) neigh_nodes.get(k);
				count=Search(h.trim(),destination_node,source_node);
				rotation++;
				if(count==0)
					break;
			}
			JOptionPane.showMessageDialog(null, output);
		}
		else
		{
			JOptionPane.showMessageDialog(null, "Sorry,Node is out of range ");
		}
		
	}
	
	static int Search(String neighbour,String destination_node,String source_node)
	{
		int hubcount=0;
		String []neigh=neighbour.split("~");
		
		for(int i=0;i<neigh.length;i++)
		{
			if(!source_node.equals(neigh[i]))
			{
				String n = "";
				String test=map.get(neigh[i]);
				String node_det[]=test.split("@");
				hubcount=Integer.parseInt(node_det[1].trim());
				
				String t=next_node.get(rotation).trim();
				String t1=map.get(t);
				String node_det1[]=t1.split("@");
				int hubcount1=Integer.parseInt(node_det1[1].trim())+1;
					
				if(hubcount>hubcount1)
				{
					hubcount=hubcount1;
					n=node_det1[2].trim()+"~"+neigh[i];
					String m=node_det[0]+"@"+hubcount+"@"+n;
						//System.out.println(" after modify :"+neigh[i]+"  "+m);
					map.put(neigh[i], m);
				}
				if(neigh[i].trim().equals(destination_node.trim()))
				{
					output=" Path :"+n+"  hub count :"+hubcount;
					hubcount=0;
					return hubcount;
				}
				else
				{
					neigh_nodes.add(node_det[0]);
					next_node.add(neigh[i].trim());
				}
			}
		}
		
		return hubcount;
	}
	
	 static double distance(int x1, int y1, int x2, int y2)  
     {  
		 return Math.sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));  
     }  
	
	public static void main(String[] args)
	{
	
		findShortestPath(120,"Node1","Node8");
	}
}
