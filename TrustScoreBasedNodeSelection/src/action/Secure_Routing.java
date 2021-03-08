package action;

import java.awt.*;
import java.awt.event.*;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;

import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.swing.*;
import javax.swing.UIManager.LookAndFeelInfo;
import javax.swing.event.*;
import javax.swing.filechooser.FileFilter;

/*import algorithm.DESAlgorithm;
import algorithm.HashingTechnique;
import algorithm.Packet_Formation;*/






public class Secure_Routing extends JFrame implements ActionListener,MenuListener 
{	

	
	 private static final int MINUTES_IN_AN_HOUR = 60;
	    private static final int SECONDS_IN_A_MINUTE = 60;
	public static PaintPanel pp;	
	private JPanel outerpanel;
	private JPanel inner_nodes_panel;
	private JPanel inner_send_panel;
	private JPanel inner_result_panel;
	private JPanel inner_remark_panel;
	
	private JButton block_hole;
	private JButton graph1;
	private JButton graph2;
	private JButton graph3;
	private JButton close;
	
	private JLabel label1;
	private JLabel label2;
	private JLabel label3;
	private JLabel result_lbl,hub_lbl;
	private JTextField txt1;
	public static JTextArea area;
	
	private JButton browse,submit,cancel,show_nodes,clear_nodes,process;
	public static JComboBox sou,des,packet_status;
	public static String name;
	private String sname;
	private String dname;
	String source_nodes[]=null;
	private HostContainer containerOBJ;
	int host_count;
	
	public static int nopathcount=0;
	int i=-1;
	private JLabel graph_lbl;
	
	 static int begening=0;
	  
	  
	static Date beg=null;
	public Secure_Routing() throws IOException
	{
		setLayout(null);
		initialize();
		
		
	}
	
	private void initialize() throws IOException 
	{
		this.setSize(new java.awt.Dimension(1030,630));
		this.setLocation(0, 0);
		this.setContentPane(getOuterJPanel());
		this.setTitle("GADOV Algorithm");
		this.setDefaultCloseOperation(javax.swing.JFrame.EXIT_ON_CLOSE);
		this.setResizable(false);
		
	}
	
	private JPanel getOuterJPanel() throws IOException 
	{
		if(outerpanel==null)
		{
			JLabel tittle=new JLabel();
			ImageIcon v2 = new ImageIcon(this.getClass().getResource("Title.png"));
			tittle.setIcon(v2);
		    tittle.setBounds(0,0,650,100);
			

		    graph_lbl=new JLabel();
		    graph_lbl.setBounds(200, 150, 531, 462);
		    graph_lbl.setVisible(false);
		    
			outerpanel = new JPanel();
			outerpanel.setLayout(null);
			outerpanel.add(graph_lbl);
			outerpanel.add(getInnerNodesJPanel());
			outerpanel.add(getInnerSendJPanel());
	
			outerpanel.add(tittle);
			
		}
		return outerpanel;
	}

	
	private JPanel getInnerNodesJPanel() 
	{
		if(inner_nodes_panel==null)
		{	
			show_nodes=new JButton("Show Nodes");
			show_nodes.setBounds(35,420,150,30);
			show_nodes.addActionListener(this);
			
			clear_nodes=new JButton("Extract_Data");
			clear_nodes.setBounds(400,420,150,30);
			clear_nodes.addActionListener(this);
				
			pp=new PaintPanel();		
			pp.setBounds(6, 2, 609, 418);
			pp.setBackground(Color.GREEN);
			pp.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.CENTER, new java.awt.Font("Tahoma", java.awt.Font.BOLD,16), new java.awt.Color(0,0,0)));
			inner_nodes_panel = new JPanel();
			inner_nodes_panel.setLayout(null);
			
			inner_nodes_panel.setBounds(new java.awt.Rectangle(2,95,620,470));
			inner_nodes_panel.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.CENTER, new java.awt.Font("Tahoma", java.awt.Font.BOLD,16), new java.awt.Color(0,0,0)));
		
			inner_nodes_panel.add(show_nodes);
			
	inner_nodes_panel.add(pp);
			
		}
	
		return inner_nodes_panel;
	}
	
	private JPanel getInnerSendJPanel() 
	{
		if(inner_send_panel==null)
		{	
			JLabel title=new JLabel("Send File");
			title.setFont(new java.awt.Font("Tahoma", java.awt.Font.BOLD, 24));
			title.setBounds(130,20,150,30);
			
			label1=new JLabel("Select Source Node");	
			label1.setFont(new java.awt.Font("Tahoma", java.awt.Font.BOLD, 12));
			label1.setBounds(35,70,150,30);
			
			sou=new JComboBox();
		//	sou.addItem("Slect")
			sou.setBounds(205,70,150,30);

			label2=new JLabel("Select Destination Node");
			label2.setFont(new java.awt.Font("Tahoma", java.awt.Font.BOLD, 12));
			label2.setBounds(35,120,150,30);
			
			
			
			label3=new JLabel("Select Packet Loss Status");
			label3.setFont(new java.awt.Font("Tahoma", java.awt.Font.BOLD, 12));
			label3.setBounds(15,340,150,40);
			
			
			des=new JComboBox();
			des.setBounds(205,120,150,30);
			
			packet_status=new JComboBox();
			packet_status.setBounds(205,340,150,30);
			
	
			
			txt1=new JTextField();
			txt1.setToolTipText("TextBox");
			txt1.setBounds(205,180,150,30);

			
			submit=new JButton("Submit");
			submit.setBounds(125,240,150,30);
			submit.addActionListener(this);
			submit.setActionCommand("submit");
			
		
			
			inner_send_panel = new JPanel();
			inner_send_panel.setLayout(null);
			//inner_send_panel.setBackground(Color.LIGHT_GRAY);
			inner_send_panel.setBounds(new java.awt.Rectangle(620,95,390,450));
			inner_send_panel.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.CENTER, new java.awt.Font("Tahoma", java.awt.Font.BOLD,16), new java.awt.Color(0,0,0)));
	
			inner_send_panel.add(title);
			inner_send_panel.add(label1);
			inner_send_panel.add(sou);
			inner_send_panel.add(label2);
		
			inner_send_panel.add(des);
		
			inner_send_panel.add(submit);

		}
	
		return inner_send_panel;
	}
	public void actionPerformed(ActionEvent ae) 
	  {
		File filename =null;
		if (ae.getSource()==browse)
		  {  
			  JFileChooser chooser = new JFileChooser();
			    chooser.setCurrentDirectory(new File("."));
			
			int returnVal = chooser.showOpenDialog(this);
			if (returnVal == JFileChooser.APPROVE_OPTION)
			{
		         name = chooser.getSelectedFile().getPath();
		         filename = chooser.getSelectedFile();
		         txt1.setText(filename.getAbsolutePath());
		         System.out.println("Cover Image" +name);
		     }
			  
		  } //End Code For JFilChooser
		  if(ae.getSource().equals(cancel))
			{
				setVisible(false);
			}
		  beg =new Date();
		  begening=(int) beg.getTime();
		  if(ae.getSource().equals(submit))
			{
			  /*	if (txt1.getText().equals(""))
			  	{
			  		JOptionPane.showMessageDialog(null,"Select FileName you want to Transfer");
			  	}*/
			  	 if (sou.getSelectedItem().equals(des.getSelectedItem()))
			  	{
				  	JOptionPane.showMessageDialog(null,"Please Select Different Destination Name");
			  	}
			  	else
			  	{
			  		
			  		
			  		sname=(String)sou.getSelectedItem();
			  		dname=(String)des.getSelectedItem();
			  		JOptionPane.showMessageDialog(null," Source Name "+sname);
			  		JOptionPane.showMessageDialog(null," Destination Name "+dname);
				  		
				  		
			  	
			  		
			  	}
			  	
			    
			    
			 
			    
			}
		  
		  if(ae.getSource().equals(show_nodes))
			{
			  UserDAO dao=new  UserDAO();
			  dao.deleteBlockHoleDetails();
			  dao. clear_similarity_score();
			 // Methods.findNeighbour(120, "Node1");
			  
			 String block_hole= dao.getNodeDetails();
			// FileWriting(block_hole,"block_hole.txt");
				pp.getData1(); 
				containerOBJ=PaintPanel.nt;
				host_count=containerOBJ.size();
				source_nodes=new String[host_count];

				
				Iterator treeTraverse = containerOBJ.getIterator();
				while (treeTraverse.hasNext())
				{
					i++;
					Host host = (Host) treeTraverse.next();
					source_nodes[i]=host.name;
					sou.addItem(host.name);
					des.addItem(host.name);
					
				}
				
				
				repaint(); 
			}
		  
				
				
		  
		  
		  
		  
		  
			  
			  
			}
		  
		  
		  
		  
		  
		  
			
		
	
	private JPanel getInnerRemarkJPanel() 
	{
		if(inner_remark_panel==null)
		{	
			area=new JTextArea();
			
			JScrollPane pane=new JScrollPane(area);
			pane.setBounds(new java.awt.Rectangle(2,2,615,123));
			
			inner_remark_panel = new JPanel();
			inner_remark_panel.setLayout(null);
			inner_remark_panel.setBounds(new java.awt.Rectangle(2,565,620,130));
			inner_remark_panel.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.CENTER, new java.awt.Font("Tahoma", java.awt.Font.BOLD,16), new java.awt.Color(0,0,0)));
			inner_remark_panel.add(pane);
		
		}
		return inner_remark_panel;
	}
	
	
	
	
	
	

	
	public void menuSelected(MenuEvent e) 
	{		// TODO Auto-generated method stub		
	}
	public void menuDeselected(MenuEvent e) 
	{		// TODO Auto-generated method stub		
	}
	public void menuCanceled(MenuEvent e) 
	{		// TODO Auto-generated method stub	
	}
	
	
	
	 static String timeConversion(int totalSeconds) {
	        int hours = totalSeconds / MINUTES_IN_AN_HOUR / SECONDS_IN_A_MINUTE;
	        int minutes = (totalSeconds - (hoursToSeconds(hours)))
	                / SECONDS_IN_A_MINUTE;
	        int seconds = totalSeconds
	                - ((hoursToSeconds(hours)) + (minutesToSeconds(minutes)));

	        return ""+seconds;
	    }

	    private static int hoursToSeconds(int hours) {
	        return hours * MINUTES_IN_AN_HOUR * SECONDS_IN_A_MINUTE;
	    }

	    private static int minutesToSeconds(int minutes) {
	        return minutes * SECONDS_IN_A_MINUTE;
	    }
	
	    
	    
	
	    
	  
}
