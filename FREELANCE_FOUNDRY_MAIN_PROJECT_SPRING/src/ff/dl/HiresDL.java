package ff.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import ff.dto.*;
public class HiresDL {
	public static int addBooking(HiresDTO hire)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		
		try
		{
			
			con=DBHelper.getConnection();
			
			query="insert into HIRES(SEEKER_ID,WORKER_ID,ACCEPT_STATUS)VALUES(?,?,?)";

			ps=con.prepareStatement(query);
			ps.setString(1,hire.getSeekerId());
			ps.setString(2,hire.getWorkerId());
			ps.setString(3,"Requested");

			//ps.setBlob(10,worker.getPortfolio());
		
			result =ps.executeUpdate();
			
			
		}catch(Exception e)
		{
			result=-1;
			
			System.out.println("**error** WorkerDL:addBooking"+e.getMessage());
		}
		return result;
		
	}
	public static ArrayList<HiresDTO> getHirers(String Worker_id)
	{
		ArrayList<HiresDTO> hirers=null;

		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		HiresDTO hirer=null;
		try
		{
			hirers=new ArrayList<HiresDTO>();

		String sql="SELECT * FROM HIRES where worker_id='"+Worker_id+"' and ACCEPT_STATUS='Requested'";
		  //   String sql ="SELECT SEEKER_ID,SEEKER_NAME,WORKER_ID,ACCEPT_STATUS from HIRES inner join SEEKERS_TBL on HIRES.SEEKER_ID = SEEKERS_TBL.SEEKER_ID";

				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					hirer=new HiresDTO();
					hirer.setSeekerId(resultSet.getString("SEEKER_ID"));
					hirer.setWorkerId(resultSet.getString("WORKER_ID"));
					hirer.setAcceptStatus(resultSet.getString("ACCEPT_STATUS"));
					
hirers.add(hirer);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** HirerDL:getHirers"+e.getMessage());
		}
		return hirers;
	}
	public static ArrayList<HiresDTO> generateFeedback(String seeker_id)
	{
		ArrayList<HiresDTO> hirers=null;

		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		HiresDTO hirer=null;
		try
		{
			hirers=new ArrayList<HiresDTO>();

		String sql="SELECT * FROM HIRES where seeker_id='"+seeker_id+"' and ACCEPT_STATUS='Accepted'";

				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					hirer=new HiresDTO();
					hirer.setSeekerId(resultSet.getString("SEEKER_ID"));
					hirer.setWorkerId(resultSet.getString("WORKER_ID"));
					hirer.setAcceptStatus(resultSet.getString("ACCEPT_STATUS"));
					
hirers.add(hirer);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** HirerDL:getHirers"+e.getMessage());
		}
		return hirers;
	}
	public static int manageRequest(String seeker_id,boolean flag)
	{
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		
		try
		{
			con = DBHelper.getConnection();
			if(flag) {
			 query = "UPDATE HIRES SET ACCEPT_STATUS='Accepted' WHERE seeker_id='"+seeker_id+"'";
			}
			else 
			{
			query = "UPDATE HIRES SET ACCEPT_STATUS='Rejected' WHERE seeker_id='"+seeker_id+"'";
			}
			ps=con.prepareStatement(query);

			result = ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** :HiresDL.manageRequest "+e.getMessage());
			
		}
		
		return result;
	}
}
