package action;
import java.awt.Graphics2D;

import java.awt.BasicStroke;
import java.awt.Image;
import java.awt.Point;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.RenderingHints;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseListener;
import java.awt.geom.AffineTransform;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.JPanel;






import action.UserDAO;
/*import algorithm.RandomValue;*/

import java.util.Date;

public class PaintPanel extends JPanel implements MouseListener
{
	private final int ARR_SIZE = 15;
	String name;
	ArrayList<String> name1;
	int xnode_x ,xnode_y ;
	String xnode_name ;
	int xnode_id;
	static public int xx,yy;
	static String nn;
	int i=0;
	int j=0;
	int hostport=5001;
	ArrayList<Integer> hostport1;
	int mouseX, mouseY,mouseX2, mouseY2;
	static int xflag = 0;
	Date d=new Date();	
	
	
	public static HostContainer nt = new HostContainer();
	public int ax,ay,bx,by,nx,ny,mx,my,cx,cy,dx,dy;
	static int lflag=0 ;
	static int aflag=0 ;
	static int s=0;
	static int xaxis[];
	static int  yaxis[];
	static ArrayList<Integer> xaxis1=new ArrayList<Integer>();
	static ArrayList<Integer> yaxis1=new ArrayList<Integer>();
	static ArrayList blocknode=new ArrayList();
	static ArrayList nodelist= new ArrayList ();
	static ArrayList timedur= new ArrayList ();
	static boolean flag2=false;
	static Date des=null;
	static Date des3=null;
	static long dest=0;
	static int duration=0;
	static int duration1=0;
	static long lls=0;
	static String blk="";
	 String path_det[],path_det1[];
	 static int index,index1,index2,index3;
	 javax.swing.Timer Timer = new javax.swing.Timer(50, new Path_Timer()); 
	 
	public PaintPanel()
	{	
		addMouseListener(
				new MouseAdapter()
				{
					public void mouseClicked(MouseEvent event)
					{
						if (i<100 && s==0)
						{
							
							if (event.getButton()== 1    )
							{
								aflag = 0;
								repaint();
								//********************** For Adding Nodes *******
								UserDAO UD = new UserDAO();
								int id=UD.getNodeID();
								System.out.println("  ID  :  "+id);
								id++;
								Point point = event.getPoint();   //Get the Point Position
								System.out.println("point x :" + point.x);
								System.out.println("point y :" + point.y);
								
								name="Node";
								name=name+String.valueOf(id);	
								hostport++;    					//Assign unique port for every Host
								
								
								Host node = new Host(point, name,id);  //Create Object and pass arguments through constructor
								String n = node.name;
								int h_id= node.host_id;
								
								UD.addNodeInfo(h_id,n,point.x,point.y,"node");
								
								System.out.println("  n  "+n);
								nt.addHost(node);   //Add object of Host class to HostContainer Class

								repaint();
							}
						}
						else
						{
							JOptionPane.showMessageDialog(null,"Allowed only 50 Receiver Hosts");
						}
						//*************
					}
				}		
		);
		//******************** PaintNode
		
		
	}

	//********************* Start
	
	public void PaintNode(int a, int b , String  xnodeName,int ynode_id)
	{
			Point point = new Point();   //Get the Point Position
			point.x = a;
			point.y = b;
			
			name=xnodeName;


			Host node = new Host(point, name,ynode_id);  //Create Object and pass arguments through constructor
			
			nt.addHost(node);   //Add object of Host class to HostContainer Class 
	}
	
	
	
	public void getPath(String[] out)
	{
	
		
		System.out.println("its cominnnnnnnnnnnn");
		xaxis=new int[out.length];
		yaxis=new int[out.length];
		int c=0;
	
		for(int i=0;i<out.length;i++)
		{
			Date g1=new Date();
			long time=	g1.getTime();
			Iterator tree = nt.getIterator(); 
			while (tree.hasNext())   //Find out source and destination point
			{		
				Host host = (Host) tree.next();
				String n=host.name.trim();
				String m=out[i].trim();
				if (n.equals(m))
				{
					Date g11=new Date();
					long time2=	g11.getTime();
					int dif=(int) (time2-time);
					
					String tmdiff=Secure_Routing.timeConversion(dif);
					
					nodelist.add(n);
					timedur.add(dif);
					
					Point p=host.position;
					xaxis[c]=p.x;
					yaxis[c]=p.y;
					c++;
				}
			}
		}
		repaint();
	}
	
	public void getConfirmPath(String[] out)
	{
		
		System.out.println("its cominnnnnnnnnnnn-------------");
		for(int i=0;i<out.length;i++)
		{
			Iterator tree = nt.getIterator(); 
			while (tree.hasNext())   //Find out source and destination point
			{		
				Host host = (Host) tree.next();
				String n=host.name.trim();
				String m=out[i].trim();
				if (n.equals(m))
				{
					Point p=host.position;
					if(i==0)
					{	cx=p.x;cy=p.y;
					}
					else if(i==1)
					{ dx=p.x;dy=p.y;  }
				}
			}
		}

	}
	//blockkkk
	public boolean getPath1(String[] out) throws Exception
	{
		
		boolean flag=true;
		
		xaxis=null;yaxis=null;
		UserDAO dao=new UserDAO();
		
		String pt=FileReading("block_hole.txt");
		
		//System.out.println("  sCurrentLine :"+pt);
		
		
		String arr[]=pt.split("~");
		blocknode.add(arr[0]);
		
		ArrayList<String>BHNodes= new ArrayList<String>(Arrays.asList(arr));
		for(int i=0;i<out.length;i++)
		{
			
			Iterator tree = nt.getIterator(); 
			while (tree.hasNext())   //Find out source and destination point
			{		
				Host host = (Host) tree.next();
				String n=host.name.trim();
				String m=out[i].trim();
				if (n.equals(m))
				{
					des3=new Date();
					lls=des3.getTime();
					
					//====================================
					Point p=host.position;
					xaxis1.add(p.x);
					yaxis1.add(p.y);
					if( BHNodes.contains(m))
					{
						
						
					 	
						 JOptionPane.showMessageDialog(null, "BlockHole Nodes is Detected : "+m);
						 
						 blk=m;
						 flag2=true;
						 JOptionPane.showMessageDialog(null, "Changing the Path  ");
						 
						 
						 System.out.println("flaggg2 "+flag2);
						 UserDAO us=new UserDAO();
						 us.getBlock_Node_Detailes(m);
						 
						 
						 
						 
						//GADOV.area.append(" \n Due to Black holes Packets  drop in middle.");
						i=out.length;
						dao.insertBlockHolePath(m);
						flag=false;
						
						Timer.stop();
						break;
						
					}
				}
			}
			
			
		}
		
		if(flag)
		{
			
			Date dt=new Date();
			int s=(int) dt.getTime();
			Secure_Routing.area.append(" \n Data Received successfully from Source");
			
			duration1=s;
			
			
			System.out.println("falg "+flag2);
			if(flag2)
			{
				des=new Date();
				
				dest=des.getTime();
				
				duration=Math.abs((int) (s-lls));
				int k=Math.abs((int) (duration+s));
				new UserDAO().m_graph_Detailes2(Secure_Routing.nopathcount,s,k);
			}
			else
			{
				int k=Math.abs((int) (duration-lls));
				new UserDAO().m_graph_Detailes(Secure_Routing.nopathcount,s,k);
			}
			
			
			//String key=FileReading("key.txt");
			String n=Secure_Routing.name;
			 File file = new File(Secure_Routing.name); 
			FileInputStream is = new FileInputStream("enc_"+file.getName());
			FileOutputStream os = new FileOutputStream("Output/"+file.getName());
			try {
				//DESAlgorithm.decrypt(key, is, os);
			} catch (Throwable e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
	
		
		
		
		repaint();
		return flag;
	}
	public static String FileReading(String filename) throws Exception
	{
		BufferedReader br = new BufferedReader(new FileReader(filename));
		String sCurrentLine;
		String pt="";
		while((sCurrentLine = br.readLine()) != null) 
		{
			pt=sCurrentLine.trim();
			
		}
		System.out.println("  sCurrentLine :"+pt);
		return pt;
	}
	
	public  void getData1()
	{
		try
		{
			UserDAO UD = new UserDAO();
			java.sql.Connection con = UD.getConnection() ;
			java.sql.Statement stmt = con.createStatement();			
			String q; 
			ResultSet rs ;			
			q= "Select * from node_info";
			
			rs = stmt.executeQuery(q);
			
			while (rs.next()) 
			{ 
				xnode_id = rs.getInt("node_id");
			    xnode_name =rs.getString("node_name");
			    xnode_x =Integer.parseInt( rs.getString("node_x"));
			    xnode_y =Integer.parseInt( rs.getString("node_y"));
			 
			    PaintNode(xnode_x, xnode_y, xnode_name,xnode_id);  
			} 
		}
		catch(Exception ee)
		{
			System.out.println("The Exception is "+ ee);
		}	
	}
	
	
	//********************* End
	  public void paint(final Graphics g)
	{
		    super.paintComponent(g);  
		
		Graphics2D gg = (Graphics2D) g;
		gg.setRenderingHint(RenderingHints.KEY_ANTIALIASING,RenderingHints.VALUE_ANTIALIAS_ON);
	
		g.setColor(Color.RED);
		gg.clearRect(0, 0, getWidth(), getHeight());
		Image node = new ImageIcon("Image/node.png").getImage();
		if(s==5)
		{
			xaxis=null;yaxis=null;
			s=0;
		}
		if(s!=5)
		{
			Iterator treeTraverse = nt.getIterator();
			while (treeTraverse.hasNext())
			{	
				Host host = (Host) treeTraverse.next();
				
				gg.setColor(Color.black);
				gg.drawImage(node,  host.position.x - 5, host.position.y - 5, this);
				gg.drawString("[" +host.name +"]", host.position.x - 20,host.position.y + 20);
			}
			gg.setColor(new Color(102, 0, 0));
			if(xaxis!=null && yaxis!=null)
			{
				for(int k=0;k<xaxis.length-1;k++)
				{
					mx=xaxis[k];my=yaxis[k];
					nx=xaxis[k+1];ny=yaxis[k+1];
		
					 BasicStroke bs3 = new BasicStroke(3, BasicStroke.CAP_SQUARE,
			                 BasicStroke.JOIN_BEVEL);
			         gg.setStroke(bs3);
			         if(k==xaxis.length-2)
			        	 drawArrow(g, mx,my,nx,ny);
			         else
						gg.drawLine(mx,my,nx,ny);
				}
			}
			
			if(xaxis1.size()!=0 && yaxis1.size()!=0)
			{
				for(int k=0;k<xaxis1.size()-1;k++)
				{
					ax=xaxis1.get(k);ay=yaxis1.get(k);
					bx=xaxis1.get(k+1);by=yaxis1.get(k+1);
		
					 BasicStroke bs3 = new BasicStroke(3, BasicStroke.CAP_SQUARE,
			                 BasicStroke.JOIN_BEVEL);
			         gg.setStroke(bs3);
			         if(k==xaxis1.size()-2)
			        	 drawArrow(g, ax,ay,bx,by);
			         else
						gg.drawLine(ax,ay,bx,by);
				}
			}
			if(cx!=0 && dx!=0)
			{
				gg.setColor(Color.BLACK);
				 BasicStroke bs3 = new BasicStroke(3, BasicStroke.CAP_SQUARE,
		                 BasicStroke.JOIN_BEVEL);
		         gg.setStroke(bs3);
		         drawArrow(g, cx,cy,dx,dy);

			}
		
		}
        /// END/////				
	}
	  void drawArrow(Graphics g1, int x1, int y1, int x2, int y2) 
	     {
	         Graphics2D g = (Graphics2D) g1.create();

	         double dx = x2 - x1, dy = y2 - y1;
	         double angle = Math.atan2(dy, dx);
	         int len = (int) Math.sqrt(dx*dx + dy*dy);
	         AffineTransform at = AffineTransform.getTranslateInstance(x1, y1);
	         at.concatenate(AffineTransform.getRotateInstance(angle));
	         g.transform(at);
	         // Draw horizontal arrow starting in (0, 0)
	 
	         g.drawLine(0, 0, len-10, 0);
	         g.fillPolygon(new int[] {len, len-ARR_SIZE, len-ARR_SIZE, len},
	                       new int[] {0, -ARR_SIZE, ARR_SIZE, 0}, 4);
	     }
		class Path_Timer implements ActionListener 
	    {	
	    	public void actionPerformed(ActionEvent e) 
	    	{
	    		try 
	    		{
	    			if(index<path_det.length-2)
	    			{
	    				//if(index==0)
	    					//GADOV.area.append("  Source sending RREQ: Route Request to RREPN1 ");
	    					
	    				String neigh1[]={path_det[index],path_det[index+1]};
	    				getPath(neigh1);

	        			index++;
	        			nt.clearVector();
	        			getData1();
	        			if(index==path_det.length-2)
	 	    				index1=index;
	    			}
	    			else if(0<index1)
	    			{
	    				if(index==index1)
	    				{
	    					//GADOV.area.append(" \n RREPN1 sending CONFIRM Packet to Destination ");
	    					String neigh1[]={path_det[index],path_det[index+1]};
	    					getConfirmPath(neigh1);
	    	        		
	    					//GADOV.area.append(" \n RREPN1 sending RREP: Route Reply to Source ");
	    				}
	    				else
	    					{cx=0;cy=0;dx=0;dy=0;}
	    			
	    				String neigh1[]={path_det[index1],path_det[index1-1]};
	    				getPath(neigh1);
	    				index1--;
	        			nt.clearVector();
	        			getData1();
	    			}
	    			else if(index2<path_det1.length-1)
	    			{
	    				//if(index2==0)
	    					//GADOV.area.append(" \n Source sending CHCKCNFRM Packet to Destination via RREPN2");
	    					
	    				String neigh1[]={path_det1[index2],path_det1[index2+1]};
	    				getPath(neigh1);
	        			index2++;
	        			nt.clearVector();
	        			getData1();
	        			if(index2==path_det1.length-1)
	        				index3=index2;			
	    			}
	    			else if(0<index3)
	    			{
	    				if(index3==index2)
	    				{
	    					//GADOV.area.append(" \n Destination sending REPLYCONFIRM Packet to Source through RREPN2 ");
	    					/*String key=RandomValue.DESKeyValue();
	    					Secure_Routing.FileWriting(key,"key.txt");*/
	    				}
	    					
	    				String neigh1[]={path_det1[index3],path_det1[index3-1]};
	    				getPath(neigh1);
	    				index3--;
	        			nt.clearVector();
	        			getData1();
	        			if(index3==0)
	    				{
	        				//GADOV.area.append(" \n After getting REPLYCONFIRM Packet from Destination Source will data to destination ");
	        				String key=FileReading("key.txt");
	        				try {
								//Secure_Routing.FileSending(key);
							} catch (Throwable e1) {
								e1.printStackTrace();
							}
	        				for(int k=0;k<path_det.length;k++)
	        				System.out.println("the path detailes is "+path_det[k]);
	        				
	        				boolean f=getPath1(path_det);
	        				String path[] =null;
	        				if(f)
	        				{
	        					
	        					
	        				}
	        				else
	        				{
	        					
	        					System.out.println(blocknode);
	        					
	        					UserDAO us=new UserDAO();
	   						String blocknode_info= us.getBlock_Node_Detailes(blk);
	   						
	   						
	   						System.out.println("Block node neighbour is "+blocknode_info);
	   						 String blkneighbr[]=blocknode_info.split("~");
	   						 
	   						for(int k=0;k<path_det.length;k++)
	   						{
	   							System.out.println("trust model path  is "+path_det[k]);
	   							
		        				if(path_det[k].equals(blk))
		        				{
		        					
		        					us.update_Trust_score_neg(path_det[k]);
		        					
		        					System.out.println("is replasing ");
		        					for(int m=0;m<3;m++)
		        					{
		        						if(!path_det[k].equals(blkneighbr[m]))
		        								{
		        							
		        							System.out.println("is replasing "+blkneighbr[m]);
		        					       path_det[k]=blkneighbr[m];
		        								}
		        					}
		        					
		        				}
		        				else
		        				{
		        					us.update_Trust_score_pos(path_det[k]);
		        				}
	   						}
	        					
	   						for(int k1=0;k1<path_det.length;k1++)
		        				System.out.println("after block hole delecting new path is  "+path_det[k1]);
	        				
	   					
	   					repaint();
	   					xaxis1.clear();
	   					yaxis1.clear();
	   					Thread.sleep(1000);
	   					
	   					getPath1(path_det);
	   					Timer.start();
	        				}
	        				
	        				
	    					Timer.stop();
	    					index=0;index1=0;index2=0;index3=0;
	    				}
	    			}
	    			Thread.sleep(800);
        			repaint();
	    		} 
	    		catch (Exception e1) 
				{
					e1.printStackTrace();
				}
	    	}
	    }

		
	  
	@Override
	public void mouseClicked(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseEntered(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseExited(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mousePressed(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseReleased(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	 

	
}