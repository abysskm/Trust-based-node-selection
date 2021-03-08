package action;

import java.sql.*;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;




public class UserDAO 
{
	Connection con = null;
	 private static final int MINUTES_IN_AN_HOUR = 60;
	    private static final int SECONDS_IN_A_MINUTE = 60;



	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nw_gadov_social_similarity", "root", "admin");
			//System.out.println("Connected");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public void closeConnection() 
	{
		try {
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void addNodeInfo(long xnode_id, String xnode_name,  int xnode_x, int xnode_y,String xnode_type)
	{
		PreparedStatement ps=null;
		String query = "insert into node_info(node_id , node_name ,  node_x,node_y,node_type) values(?,?,?,?,?)";
			
		try
		{
			getConnection();
			
			ps=con.prepareStatement(query);
			ps.setLong(1,xnode_id);
			ps.setString(2,xnode_name);
		
			ps.setLong(3,xnode_x);
			ps.setLong(4,xnode_y);
			ps.setString(5,xnode_type);
			ps.executeUpdate();
			closeConnection();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}
	
	
	public  void addNeighbourNodeInfo(String name,String neigh_node,String nei) 
	{
		try
		{
			con=getConnection();
			Statement stmt = con.createStatement();
			String q="insert into neigh_bour (node_name,neighbor_node,neihn_node) values ('"+name+"','"+neigh_node+"','"+nei+"')";
		//	System.out.println(q);
			stmt.execute(q);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	public  void insertBlockHolePath(String path) 
	{
		try
		{
			con=getConnection();
			Statement stmt = con.createStatement();
			String q="insert into blockhole_path  values ('"+path+"')";
			//System.out.println(q);
			stmt.execute(q);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	

	public String getNodeDetails() 
	{
		String block_hole="";
		try
		{
			con=getConnection();
			String q = "SELECT * from node_info ORDER BY RAND() LIMIT 3";
	//		System.out.println(q);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(q);
			while(rs.next())
			{
			
				String name = rs.getString("node_name");
				block_hole=block_hole+"~"+name;
			}
			//block_hole="Node31~Node7~Node20"; // u can select the node source is Node1 And destination is Node 40
			block_hole=block_hole.substring(1, block_hole.length());
			
		}
		catch (Exception e) 	{e.printStackTrace();	}
		return block_hole;
		
	}
	
	public ArrayList<String> getBHNodes() 
	{
		ArrayList<String> bhnodes = new ArrayList<String>();
		try
		{
			con=getConnection();
			String q = "select * from blockhole_path";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(q);
			
			while(rs.next())
			{
				bhnodes.add(rs.getString(1));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return bhnodes;
	}
	
	public void deleteBlockHoleDetails() 
	{
		try
		{
			con=getConnection();
			String q1 = "delete from blockhole_path";
			Statement stmt = con.createStatement();
			stmt.executeUpdate(q1);
			 q1 = "delete from neigh_bour";
			 stmt.executeUpdate(q1);
		}
		catch (Exception e) {	}
	}
	
	public ResultSet getNodeDet() 
	{
		ResultSet rs = null;
		try
		{
			con=getConnection();
			String q;
			Statement stmt = con.createStatement();
			//q = "Select node_name,node_x,node_y from node_info";
			q ="Select node_name,node_x,node_y from node_info where node_name in (select node_name from trust_model where trust_score>=5)";
			//System.out.println(q);
			rs = stmt.executeQuery(q);
		}
		catch(Exception e1)
		{e1.printStackTrace();}
		return rs;
	}
	public int getNodeID() 
	{
		int node_id=0;
		try
		{
			con=getConnection();
			
			String q = "SELECT node_id from node_info order by node_id desc limit 1";
	//		System.out.println(q);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(q);
			while(rs.next())
			{
				node_id=rs.getInt(1);
			}
		}
		catch (Exception e) 	{	}
		return node_id;
		
	}
	
	public void deleteNodes()
	{
		try
		{
			con=getConnection();
			String q;
			Statement stmt = con.createStatement();
			q = "delete from node_info";
		//	System.out.println(q);
			 stmt.executeUpdate(q);
		
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	public String getBlock_Node_Detailes(String node) 
	{
		String  node_info="";
		try
		{
			con=getConnection();
			
			String q = "select neighbor_node from neigh_bour where node_name='"+node+"'";
	//		System.out.println(q);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(q);
			while(rs.next())
			{
				node_info=rs.getString(1);
			}
		}
		catch (Exception e) 	{	}
		return node_info;
		
	}

	/**
	 * @param nopathcount
	 * @param duration
	 */
	public  void m_graph_Detailes(int nopathcount, int duration,int k) 
	{
		try
			{
			String dura=timeConversion(duration);
			String wimal=timeConversion(k);
			String status="without_malicious";
				con=getConnection();
				Statement stmt = con.createStatement();
				String q="insert into m_transaction(no_hubs,duration,status)  values ('"+nopathcount+"', '"+dura+"','"+status+"')";
				//System.out.println(q);
				stmt.execute(q);
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}	
			
		
	}
	
	
	
	public  void m_graph_Detailes2(int nopathcount, int duration,int k) 
	{
		try
			{
			String dura=timeConversion(duration);
			String malblk=timeConversion(k);
				con=getConnection();
				Statement stmt = con.createStatement();
				String status="withmalicious";
				
				//String q="insert into m_graph(no_hubs,withmaltime)  values ('"+nopathcount+"', '"+dura+"');SELECT LAST_INSERT_ID();";
				//System.out.println(q);
				//int id=stmt.executeUpdate(q);
				
				//String q1="update m_graph set withoutmaltime = where s_no="+id+"";
				
				String q1="insert into m_transaction(no_hubs,duration,status)  values ('"+nopathcount+"', '"+dura+"','"+status+"')";
				stmt.execute(q1);
				
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}	
			
		
	}
	
	
	public ResultSet get_graph_Detailes() 
	{
		String  node_info="";
		ResultSet rs=null;
		try
		{
			con=getConnection();
			
			String q = "select * from m_graph group by no_hubs";
	//		System.out.println(q);
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(q);
			
		}
		catch (Exception e) 	{	}
		return rs;
		
	}

	
	
	
	
	
	
	
	public  int  update_graph_Detailes2() 
	{
		String  node_info="";
		ResultSet rs=null;
		int hubs=0;
		try
		{
			con=getConnection();
			
			String q = "select * from  m_transaction where status='without_malicious'";
	//		System.out.println(q);
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(q);
			
			while(rs.next())
			{
				
				stmt.executeUpdate("insert into m_graph(no_hubs,withoutmaltime) values('"+rs.getInt(2)+"', '"+rs.getString(3)+"')");
				hubs=rs.getInt(2);
			}
			
			
		}
		catch (Exception e) 	{	}
		return hubs;
		
		
	}

	
	
	
	public ResultSet getnighbor_Node_Detailes() 
	{	ResultSet rs=null;
		String  node_info="";
		try
		{
			con=getConnection();
			
			String q = "select node_name,neighbor_node from neigh_bour";
	//		System.out.println(q);
			Statement stmt = con.createStatement();
		 rs= stmt.executeQuery(q);
			
		}
		catch (Exception e) 	{	}
		return rs;
		
	}
	
	
	public ArrayList<String> get_Node_Prop(String node) 
	{	ResultSet rs=null;
	ArrayList<String>  node_info=new ArrayList<>();;
		try
		{
			con=getConnection();
			
			String q = "select topic_of_intrest,country,language from node_info where node_name='"+node+"' ";
		System.out.println(q);
			Statement stmt = con.createStatement();
		 rs= stmt.executeQuery(q);
		 while(rs.next())
		 {
			 node_info.add(rs.getString(1));
			 node_info.add(rs.getString(2));
			 node_info.add(rs.getString(3));
		 }
			
		}
		catch (Exception e) 	{	}
		return node_info;
		
	}
	
	
	public  void clear_node_info() 
	{
		try
			{
			
				con=getConnection();
				Statement stmt = con.createStatement();
				
				
			
				
				String q1="truncate node_info";
				stmt.execute(q1);
				
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}	
			
		
	}
	
	public  void clear_similarity_score() 
	{
		try
			{
			
				con=getConnection();
				Statement stmt = con.createStatement();
				
				
				//String q="insert into m_graph(no_hubs,withmaltime)  values ('"+nopathcount+"', '"+dura+"');SELECT LAST_INSERT_ID();";
				//System.out.println(q);
				//int id=stmt.executeUpdate(q);
				
				//String q1="update m_graph set withoutmaltime = where s_no="+id+"";
				
				String q1="truncate node_similarity";
				stmt.execute(q1);
				
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}	
			
		
	}
	
	
	
	
	public  void update_similarity_score(String nodfrm, String nodnig,double similar) 
	{
		try
			{
			
				con=getConnection();
				Statement stmt = con.createStatement();
				
				
				//String q="insert into m_graph(no_hubs,withmaltime)  values ('"+nopathcount+"', '"+dura+"');SELECT LAST_INSERT_ID();";
				//System.out.println(q);
				//int id=stmt.executeUpdate(q);
				
				//String q1="update m_graph set withoutmaltime = where s_no="+id+"";
				
				String q1="insert into node_similarity(node_name,nighbor_node,sim_score)  values ('"+nodfrm+"', '"+nodnig+"','"+similar+"')";
				stmt.execute(q1);
				
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}	
			
		
	}
	
	
	
	
	
	
	
	
	
	
	public  void  update_graph_Detailes3() 
	{
		String  node_info="";
		ResultSet rs=null;
		int hubs=0;
		try
		{
			con=getConnection();
			
			String q = "select * from  m_transaction where status='withmalicious'";
	//		System.out.println(q);
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(q);
			
			while(rs.next())
			{
				System.out.println(""+"update m_graph set withmaltime='"+rs.getString(3)+"' where no_hubs='"+rs.getInt(2)+"'");
				stmt.executeUpdate("update m_graph set withmaltime='"+rs.getString(3)+"' where no_hubs='"+rs.getInt(2)+"'");
				hubs=rs.getInt(2);
			}
			
			
		}
		catch (Exception e) 	{	}
		
		
	}
	
	
	
	
	public  String   selct_sim_nodes(String node,String src,String dest) 
	{
		String  node_info="";
		ResultSet rs=null;
		int hubs=0;
		try
		{
			con=getConnection();
			
			String q = "select nighbor_node from node_similarity where node_name='"+node+"' and sim_score=(select max(sim_score) from node_similarity where node_name='"+node+"' and nighbor_node!='"+src+"' and nighbor_node!='"+dest+"')";
			System.out.println(q);
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(q);
			while(rs.next())
			{
				if(!rs.getString(1).equals(node))
				{
				node_info=rs.getString(1);
				}
			}
			
		}
		catch (Exception e) 	{	}
		return node_info;
		
		
	}
	
	
	public  String   selct_second__sim_nodes(String node) 
	{
		String  node_info=null;
		ResultSet rs=null;
		int hubs=0;
		try
		{
			con=getConnection();
			
			String q = "select nighbor_node from node_similarity where sim_score=(select MAX(sim_score) AS sim_score from node_similarity where sim_score<(SELECT MAX(sim_score)FROM node_similarity where node_name='"+node+"')) and node_name='"+node+"' limit 1";
			System.out.println(q);
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(q);
			while(rs.next())
			{
				if(!rs.getString(1).equals(node))
				{
				node_info=rs.getString(1);
				}
			}
			
		}
		catch (Exception e) 	{	}
		return node_info;
		
		
	}
	
	public  boolean addPatient_Dataset(String node_name, String node_x,
			String node_y,  String country, String language,
			 String affiliation, String position, String topic_of_intrest)

	{
		boolean flag = false;
		String sql = "";
		try {
			con=getConnection();
			
			
			Statement stmt = con.createStatement();
			sql = "insert into node_info(node_name,node_x,node_y,country,language,affiliation,position,topic_of_intrest) values('"
					+ node_name
					+ "','"
					+ node_x
					+ "','"
					+ node_y
					+ "','"
					+ country
					+ "','"
					+ language
					+ "','"
					+ affiliation
					+ "','"
					+ position
					+ "','"
					+ topic_of_intrest+ "')";
			System.out.println(sql);
			int i=stmt.executeUpdate(sql);
			System.out
					.println("********** Upload File Transaction Info ***********");
			System.out.println(sql);
			if (i != 0) {
				flag = true;
			}
			
			con.close();
			stmt.close();
			System.out.println("Add File Trans Status : " + flag);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	
	
	
	
	public  boolean add_Trust_model(String node_name)

	{
		boolean flag = false;
		String sql = "";
		try {
			con=getConnection();
			
			
			Statement stmt = con.createStatement();
			sql = "insert into trust_model(node_name) values('"+ node_name+ "')";
			System.out.println(sql);
			int i=stmt.executeUpdate(sql);
			System.out
					.println("********** Upload File Transaction Info ***********");
			System.out.println(sql);
			if (i != 0) {
				flag = true;
			}
			
			con.close();
			stmt.close();
			System.out.println("Add File Trans Status : " + flag);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	
	public  boolean update_Trust_score_neg(String node_name)

	{
		boolean flag = false;
		String sql = "";
		try {
			con=getConnection();
			
			
			Statement stmt = con.createStatement();
			sql = "update trust_model set trust_score=trust_score-0.1 where node_name='"+ node_name+ "'";
			System.out.println(sql);
			int i=stmt.executeUpdate(sql);
			System.out
					.println("********** Upload File Transaction Info ***********");
			System.out.println(sql);
			if (i != 0) {
				flag = true;
			}
			
			con.close();
			stmt.close();
			System.out.println("Add File Trans Status : " + flag);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public  boolean update_Trust_score_pos(String node_name)

	{
		boolean flag = false;
		String sql = "";
		try {
			con=getConnection();
			
			
			Statement stmt = con.createStatement();
			sql = "update trust_model set trust_score=trust_score+0.1 where node_name='"+ node_name+ "'";
			System.out.println(sql);
			int i=stmt.executeUpdate(sql);
			System.out
					.println("********** Upload File Transaction Info ***********");
			System.out.println(sql);
			if (i != 0) {
				flag = true;
			}
			
			con.close();
			stmt.close();
			System.out.println("Add File Trans Status : " + flag);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	
	public  void m_packet_Detailes(String hashcode) 
	{
		try
			{
			
				con=getConnection();
				Statement stmt = con.createStatement();
				String q="insert into data_packets(pack_hash_code)  values ('"+hashcode+"')";
				//System.out.println(q);
				stmt.execute(q);
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}	
			
		
	}
	
	 private static String timeConversion(int totalSeconds) {
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
	
	    
	    public static void main(String[] args) 
	    {
			
	    	System.out.println("----"+timeConversion(12354));
	    	
		}
}