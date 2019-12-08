package ff.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import ff.dto.*;

public class SeekerDL {
	
	public static int addSeekers(SeekerDTO seeker)
	{
		int result=0;
		String query,query1;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="insert into SEEKERS_TBL(SEEKER_ID,SEEKER_NAME,SEEKER_ADDRESS,SEEKER_PHONE,ADMIN_APPROVAL)VALUES(?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1,seeker.getSeekerId());
			ps.setString(2,seeker.getSeekerName());
			ps.setString(3,seeker.getSeekerAddress());
			ps.setString(4,seeker.getSeekerPhone());
			ps.setString(5,seeker.getAdminApproval());
			result =ps.executeUpdate();
			
			query1="insert into LOGIN(USERNAME,PASSWORD,ROLE,ID)VALUES(?,?,?,?)";
			ps=con.prepareStatement(query1);
			ps.setString(1,seeker.getUsername());
			ps.setString(2,seeker.getPassword());
			ps.setString(3,seeker.getRole());
			ps.setString(4,seeker.getSeekerId());
			result =ps.executeUpdate();
		}catch(Exception e)
		{
			result=-1;
			
			System.out.println("**error** SeekerDL:addSeekers"+e.getMessage());
		}
		return result;
		
	}
	public static ArrayList<SeekerDTO> getPendingSeekers()
	{
		ArrayList<SeekerDTO> seekers=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		SeekerDTO seeker=null;
		
		try
		{
			seekers=new ArrayList<SeekerDTO>();
			String sql="SELECT * FROM SEEKERS_TBL where ADMIN_APPROVAL='Pending' ORDER BY SEEKER_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					seeker=new SeekerDTO();
					
					seeker.setSeekerId(resultSet.getString("SEEKER_ID"));
					seeker.setSeekerName(resultSet.getString("SEEKER_NAME"));
					seeker.setSeekerAddress(resultSet.getString("SEEKER_ADDRESS"));
					seeker.setSeekerPhone(resultSet.getString("SEEKER_PHONE"));
					
					seeker.setAdminApproval(resultSet.getString("ADMIN_APPROVAL"));
seekers.add(seeker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** SeekerDL:getSeekers"+e.getMessage());
		}
		return seekers;
	}
	public static ArrayList<SeekerDTO> getApprovedSeekers()
	{
		ArrayList<SeekerDTO> seekers=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		SeekerDTO seeker=null;
		
		try
		{
			seekers=new ArrayList<SeekerDTO>();
			String sql="SELECT * FROM SEEKERS_TBL where ADMIN_APPROVAL='Approved' ORDER BY SEEKER_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					seeker=new SeekerDTO();
					
					seeker.setSeekerId(resultSet.getString("SEEKER_ID"));
					seeker.setSeekerName(resultSet.getString("SEEKER_NAME"));
					seeker.setSeekerAddress(resultSet.getString("SEEKER_ADDRESS"));
					seeker.setSeekerPhone(resultSet.getString("SEEKER_PHONE"));
seekers.add(seeker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** SeekerDL:getSeekers"+e.getMessage());
		}
		return seekers;
	}
	public static ArrayList<SeekerDTO> getAllSeekers()
	{
		ArrayList<SeekerDTO> seekers=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		SeekerDTO seeker=null;
		
		try
		{
			seekers=new ArrayList<SeekerDTO>();
			String sql="SELECT * FROM SEEKERS_TBL ORDER BY SEEKER_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					seeker=new SeekerDTO();
					
					seeker.setSeekerId(resultSet.getString("SEEKER_ID"));
					seeker.setSeekerName(resultSet.getString("SEEKER_NAME"));
					seeker.setSeekerAddress(resultSet.getString("SEEKER_ADDRESS"));
					seeker.setSeekerPhone(resultSet.getString("SEEKER_PHONE"));
					seeker.setAdminApproval(resultSet.getString("ADMIN_APPROVAL"));
					seekers.add(seeker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** SeekerDL:getSeekers"+e.getMessage());
		}
		return seekers;
	}
	public static String SeekersIdGenerator()
	{
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		int result=0;
		
		String seeker_id=new String();
		
		try
		{
			
				String sql="SELECT SEEKER_ID FROM SEEKERS_TBL ORDER BY SEEKER_ID DESC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				if(resultSet.next())
				{
					seeker_id=resultSet.getString(1);
				}
				else
					seeker_id=null;
				
		}
		catch(Exception e)
		{
			System.out.println("**error** SeekerDL:SeekerIdGenerator"+e.getMessage());
		}
		return seeker_id;
	}
	
	public static SeekerDTO getSeeker(String SeekerId)
	{
		ArrayList<SeekerDTO> seekers=null;
		Connection con=null;
		
		SeekerDTO seeker = null;
		Statement statement=null;
		ResultSet resultSet=null;
		
		
		try
		{
				seekers=new ArrayList<SeekerDTO>();
				String sql="SELECT * FROM SEEKERS_TBL WHERE SEEKER_ID='"+SeekerId+"'";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					seeker=new SeekerDTO();
					
					seeker.setSeekerId(resultSet.getString("SEEKER_ID"));
					seeker.setSeekerName(resultSet.getString("SEEKER_NAME"));
					seeker.setSeekerAddress(resultSet.getString("SEEKER_ADDRESS"));
					seeker.setSeekerPhone(resultSet.getString("SEEKER_PHONE"));
					seeker.setAdminApproval(resultSet.getString("ADMIN_APPROVAL"));

					seekers.add(seeker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** SeekerDL:getSeekers"+e.getMessage());
		}
		return seeker;
	}
	
	public static int updateSeeker(SeekerDTO seeker)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="UPDATE SEEKERS_TBL set SEEKER_NAME=?,SEEKER_ADDRESS=?,SEEKER_PHONE=? where SEEKER_ID=?";
			ps=con.prepareStatement(query);
			
			
			ps.setString(1,seeker.getSeekerName());
			ps.setString(2,seeker.getSeekerAddress());
			ps.setString(3,seeker.getSeekerPhone());
			ps.setString(4,seeker.getSeekerId());

			result =ps.executeUpdate();
			
		}catch(Exception e)
		{
			System.out.println("**error** SeekerDL:updateSeeker"+e.getMessage());
		}
		return result;
	}
	public static int deleteRequest(String seeker_id)
	{
		int result2 = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		
		try
		{
			con = DBHelper.getConnection();
			 query = "UPDATE SEEKERS_TBL SET ADMIN_APPROVAL='DELREQ' WHERE seeker_id='"+seeker_id+"'";
			ps=con.prepareStatement(query);

			result2 = ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result2 = -1;
			System.out.println("**Error** :SeekerDL.deleteRequest "+e.getMessage());
			
		}
		
		return result2;
	}
	public static int deleteSeeker(String seeker_id)
	{
		int  result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="Delete from SEEKERS_TBL where SEEKER_ID='"+seeker_id+"'";
			ps=con.prepareStatement(query);
			result =ps.executeUpdate();
		}catch(Exception e)
		{
			System.out.println("**error** SeekerDL:deleteSeeker"+e.getMessage());
		}
		return result;
	}
	
	public static int approveSeeker(String seeker_id)
	{
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		
		try
		{
			con = DBHelper.getConnection();
			 query = "UPDATE SEEKERS_TBL SET admin_approval='Approved' WHERE seeker_id='"+seeker_id+"'";
			ps=con.prepareStatement(query);
		
			result = ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** :approveSeeeker.seekerDL "+e.getMessage());
			
		}
		
		return result;
	}
	public static ArrayList<SeekerDTO> getDeletionRequests()
	{
		ArrayList<SeekerDTO> seekers=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		SeekerDTO seeker=null;
		
		try
		{
			seekers=new ArrayList<SeekerDTO>();
			String sql="SELECT * FROM SEEKERS_TBL where ADMIN_APPROVAL='DELREQ' ORDER BY SEEKER_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					seeker=new SeekerDTO();
					
					seeker.setSeekerId(resultSet.getString("SEEKER_ID"));
					seeker.setSeekerName(resultSet.getString("SEEKER_NAME"));
					seeker.setSeekerAddress(resultSet.getString("SEEKER_ADDRESS"));
					seeker.setSeekerPhone(resultSet.getString("SEEKER_PHONE"));
					seeker.setAdminApproval(resultSet.getString("ADMIN_APPROVAL"));
					seekers.add(seeker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** SeekerDL:getSeekers"+e.getMessage());
		}
		return seekers;
	}
	public static SeekerDTO checkPhone(SeekerDTO seeker)
	{
		Connection con=null;
		ResultSet resultSet=null;
		SeekerDTO seeker2=null;
		try
		{
			String query="select * from SEEKERS_TBL where SEEKER_PHONE=?";
			con=DBHelper.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement(query);
			ps.setString(1,seeker.getSeekerPhone());
			//ps.setString(2,login.getPassword());
		//ps.setString(3,login.getRole());

			//result=ps.executeUpdate();

			resultSet =ps.executeQuery();
				
		if(resultSet.next()) 
		{
			seeker2=new SeekerDTO();
			seeker2.setSeekerId(resultSet.getString("SEEKER_ID"));
			seeker2.setSeekerName(resultSet.getString("SEEKER_NAME"));
			seeker2.setSeekerAddress(resultSet.getString("SEEKER_ADDRESS"));
			seeker2.setSeekerPhone(resultSet.getString("SEEKER_PHONE"));
			seeker2.setAdminApproval(resultSet.getString("ADMIN_APPROVAL"));

		}

	}
		catch(Exception e)
		{
			System.out.println("*****error** SeekerDL.checkPhone"+e.getMessage());
		}
		return seeker2;
}
}
