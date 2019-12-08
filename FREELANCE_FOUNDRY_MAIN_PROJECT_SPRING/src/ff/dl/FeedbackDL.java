package ff.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import ff.aig.*;
import ff.dl.DBHelper;
import ff.dto.FeedbackDTO;

public class FeedbackDL {
	
	public static int addFeedback(FeedbackDTO feedback)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="insert into FEEDBACK(FEEDBACK_ID,SEEKER_ID,WORKER_ID,FEEDBACK_DATE,FEEDBACK)VALUES(?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1,feedback.getFeedbackId());
			ps.setString(2,feedback.getSeekerId());
			ps.setString(3,feedback.getWorkerId());
			ps.setString(4,feedback.getFeedbackDate());
			ps.setString(5,feedback.getFeedback());

			result =ps.executeUpdate();
			
			
		}catch(Exception e)
		{
			result=-1;
			
			System.out.println("**error** FeedbackDL:addFeedbacks"+e.getMessage());
		}
		return result;
		
	}
	public static ArrayList<FeedbackDTO> getFeedbacks()
	{
		ArrayList<FeedbackDTO> feedbacks=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		FeedbackDTO feedback=null;
		
		try
		{
			feedbacks=new ArrayList<FeedbackDTO>();
				String sql="SELECT * FROM FEEDBACK ORDER BY FEEDBACK_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					feedback=new FeedbackDTO();
					
					feedback.setFeedbackId(resultSet.getString("FEEDBACK_ID")); 
					feedback.setSeekerId(resultSet.getString("SEEKER_ID"));  
					feedback.setWorkerId(resultSet.getString("WORKER_ID"));

					feedback.setFeedbackDate(resultSet.getString("FEEDBACK_DATE"));
					feedback.setFeedback(resultSet.getString("FEEDBACK"));
					
					feedbacks.add(feedback);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** FeedbackDL:getFeedbacks"+e.getMessage());
		}
		return feedbacks;
	}
	public static ArrayList<FeedbackDTO> getWorkerFeedbacks(String worker_id)
	{
		ArrayList<FeedbackDTO> feedbacks=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		FeedbackDTO feedback=null;
		
		try
		{
			feedbacks=new ArrayList<FeedbackDTO>();
				String sql="SELECT * FROM FEEDBACK WHERE WORKER_ID='"+worker_id+"'ORDER BY FEEDBACK_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					feedback=new FeedbackDTO();
					
					feedback.setFeedbackId(resultSet.getString("FEEDBACK_ID")); 
					feedback.setSeekerId(resultSet.getString("SEEKER_ID"));  
					feedback.setWorkerId(resultSet.getString("WORKER_ID"));

					feedback.setFeedbackDate(resultSet.getString("FEEDBACK_DATE"));
					feedback.setFeedback(resultSet.getString("FEEDBACK"));
					
					feedbacks.add(feedback);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** FeedbackDL:getFeedbacks"+e.getMessage());
		}
		return feedbacks;
	}
	public static String FeedbackIdGenerator()
	{
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		int result=0;
		
		String feedback_id=new String();
		
		try
		{
			
				String sql="SELECT FEEDBACK_ID FROM FEEDBACK ORDER BY FEEDBACK_ID DESC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				if(resultSet.next())
				{
					feedback_id=resultSet.getString(1);
				}
				else
					feedback_id=null;
				
		}
		catch(Exception e)
		{
			System.out.println("**error** feedbackDL:FeedbackIdGenerator"+e.getMessage());
		}
		return feedback_id;
	}
	public static int deleteFeedback(String feedback_id)
	{
		int  result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="Delete from FEEDBACK where FEEDBACK_ID='"+feedback_id+"'";
			ps=con.prepareStatement(query);
			result =ps.executeUpdate();
		}catch(Exception e)
		{
			System.out.println("**error** FeedbackDL:deleteFeedback"+e.getMessage());
		}
		return result;
	}

}
