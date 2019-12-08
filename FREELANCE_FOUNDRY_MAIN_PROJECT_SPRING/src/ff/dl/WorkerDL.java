package ff.dl;
import ff.dto.*;
import ff.dl.DBHelper;
import java.util.*;
import java.sql.*;
public class WorkerDL {
	
	public static int addWorkers(WorkerDTO worker)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="insert into WORKERS_TBL(WORKER_ID,WORKER_NAME,WORKER_ADDRESS,GENDER,AGE,WORK_CATEGORY,EXPERIENCE,WORKER_PHONE,WAGES,STATUS,ADMIN_APPROVAL)VALUES(?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1,worker.getWorkerId());
			ps.setString(2,worker.getWorkerName());
			ps.setString(3,worker.getWorkerAddress());
			ps.setString(4,worker.getGender());
			ps.setString(5,worker.getAge());
			ps.setString(6,worker.getWorkCategory());
			ps.setString(7,worker.getExperience());
			ps.setString(8,worker.getWorkerPhone());
			ps.setInt(9,worker.getWages());
			ps.setString(10,worker.getStatus());
			ps.setString(11,worker.getAdminApproval());

			//ps.setBlob(10,seeker.getPortfolio());
		
			result =ps.executeUpdate();
			
			
		}catch(Exception e)
		{
			result=-1;
			
			System.out.println("**error** WorkerDL:addWorkers"+e.getMessage());
		}
		return result;
		
	}
	
	public static ArrayList<WorkerDTO> getWorkers(String work_category)
	{
		ArrayList<WorkerDTO> workers=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		WorkerDTO worker=null;
		
		try
		{
				workers=new ArrayList<WorkerDTO>();
				String sql="SELECT * FROM WORKERS_TBL where WORK_CATEGORY='"+work_category+"'and STATUS='Available'";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					worker=new WorkerDTO();
					
					worker.setWorkerId(resultSet.getString("WORKER_ID"));
					worker.setWorkerName(resultSet.getString("WORKER_NAME"));
					worker.setWorkerAddress(resultSet.getString("WORKER_ADDRESS"));
					worker.setGender(resultSet.getString("GENDER"));
					worker.setAge(resultSet.getString("AGE"));
					worker.setWorkCategory(resultSet.getString("WORK_CATEGORY"));
					worker.setExperience(resultSet.getString("EXPERIENCE"));
					worker.setWorkerPhone(resultSet.getString("WORKER_PHONE"));
					worker.setWages(resultSet.getInt("WAGES"));
					worker.setStatus(resultSet.getString("STATUS"));
					worker.setStatus(resultSet.getString("ADMIN_APPROVAL"));

					//worker.setStatus(resultSet.getString("PORTFOLIO"));
					workers.add(worker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerDL:getworkers"+e.getMessage());
		}
		return workers;
	}
	
	public static ArrayList<WorkerDTO> getPendingWorkers()
	{
		ArrayList<WorkerDTO> workers=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		WorkerDTO worker=null;
		
		try
		{
				workers=new ArrayList<WorkerDTO>();
				String sql="SELECT * FROM WORKERS_TBL where ADMIN_APPROVAL='Pending' ORDER BY WORKER_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					worker=new WorkerDTO();
					
					worker.setWorkerId(resultSet.getString("WORKER_ID"));
					worker.setWorkerName(resultSet.getString("WORKER_NAME"));
					worker.setWorkerAddress(resultSet.getString("WORKER_ADDRESS"));
					worker.setGender(resultSet.getString("GENDER"));
					worker.setAge(resultSet.getString("AGE"));
					worker.setWorkCategory(resultSet.getString("WORK_CATEGORY"));
					worker.setExperience(resultSet.getString("EXPERIENCE"));
					worker.setWorkerPhone(resultSet.getString("WORKER_PHONE"));
					worker.setWages(resultSet.getInt("WAGES"));
					worker.setStatus(resultSet.getString("STATUS"));
					worker.setAdminApproval(resultSet.getString("ADMIN_APPROVAL"));

					//seeker.setStatus(resultSet.getString("PORTFOLIO"));
					workers.add(worker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerDL:getseekers"+e.getMessage());
		}
		return workers;
	}
	public static ArrayList<WorkerDTO> getApprovedWorkers()
	{
		ArrayList<WorkerDTO> workers=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		WorkerDTO worker=null;
		
		try
		{
				workers=new ArrayList<WorkerDTO>();
				String sql="SELECT * FROM WORKERS_TBL where ADMIN_APPROVAL='Approved' ORDER BY WORKER_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					worker=new WorkerDTO();
					
					worker.setWorkerId(resultSet.getString("WORKER_ID"));
					worker.setWorkerName(resultSet.getString("WORKER_NAME"));
					worker.setWorkerAddress(resultSet.getString("WORKER_ADDRESS"));
					worker.setGender(resultSet.getString("GENDER"));
					worker.setAge(resultSet.getString("AGE"));
					worker.setWorkCategory(resultSet.getString("WORK_CATEGORY"));
					worker.setExperience(resultSet.getString("EXPERIENCE"));
					worker.setWorkerPhone(resultSet.getString("WORKER_PHONE"));
					worker.setWages(resultSet.getInt("WAGES"));
					worker.setStatus(resultSet.getString("STATUS"));

					//seeker.setStatus(resultSet.getString("PORTFOLIO"));
					workers.add(worker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerDL:getseekers"+e.getMessage());
		}
		return workers;
	}
	public static ArrayList<WorkerDTO> getDeletionRequests()
	{
		ArrayList<WorkerDTO> workers=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		WorkerDTO worker=null;
		
		try
		{
				workers=new ArrayList<WorkerDTO>();
				String sql="SELECT * FROM WORKERS_TBL where STATUS='DELREQ' ORDER BY WORKER_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					worker=new WorkerDTO();
					
					worker.setWorkerId(resultSet.getString("WORKER_ID"));
					worker.setWorkerName(resultSet.getString("WORKER_NAME"));
					worker.setWorkerAddress(resultSet.getString("WORKER_ADDRESS"));
					worker.setGender(resultSet.getString("GENDER"));
					worker.setAge(resultSet.getString("AGE"));
					worker.setWorkCategory(resultSet.getString("WORK_CATEGORY"));
					worker.setExperience(resultSet.getString("EXPERIENCE"));
					worker.setWorkerPhone(resultSet.getString("WORKER_PHONE"));
					worker.setWages(resultSet.getInt("WAGES"));
					worker.setStatus(resultSet.getString("STATUS"));
					worker.setAdminApproval(resultSet.getString("ADMIN_APPROVAL"));

					//seeker.setStatus(resultSet.getString("PORTFOLIO"));
					workers.add(worker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerDL:getseekers"+e.getMessage());
		}
		return workers;
	}
	public static ArrayList<WorkerDTO> getAllWorkers()
	{
		ArrayList<WorkerDTO> workers=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		WorkerDTO worker=null;
		
		try
		{
				workers=new ArrayList<WorkerDTO>();
				String sql="SELECT * FROM WORKERS_TBL where STATUS='Available'ORDER BY WORKER_ID ASC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					worker=new WorkerDTO();
					
					worker.setWorkerId(resultSet.getString("WORKER_ID"));
					worker.setWorkerName(resultSet.getString("WORKER_NAME"));
					worker.setWorkerAddress(resultSet.getString("WORKER_ADDRESS"));
					worker.setGender(resultSet.getString("GENDER"));
					worker.setAge(resultSet.getString("AGE"));
					worker.setWorkCategory(resultSet.getString("WORK_CATEGORY"));
					worker.setExperience(resultSet.getString("EXPERIENCE"));
					worker.setWorkerPhone(resultSet.getString("WORKER_PHONE"));
					worker.setWages(resultSet.getInt("WAGES"));
					worker.setStatus(resultSet.getString("STATUS"));
					worker.setAdminApproval(resultSet.getString("ADMIN_APPROVAL"));

					//seeker.setStatus(resultSet.getString("PORTFOLIO"));
					workers.add(worker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerDL:getseekers"+e.getMessage());
		}
		return workers;
	}
	
	public static String WorkersIdGenerator()
	{
		Connection con=null;
		Statement statement=null;
		ResultSet resultSet=null;
		int result=0;
		
		String worker_id=new String();
		
		try
		{
			
				String sql="SELECT WORKER_ID FROM WORKERS_TBL ORDER BY WORKER_ID DESC";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				if(resultSet.next())
				{
					worker_id=resultSet.getString(1);
				}
				else
					worker_id=null;
				
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerDL:WorkersIdGenerator"+e.getMessage());
		}
		return worker_id;
	}
	

	
	public static int approveWorker(String worker_id)
	{
		int result = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		
		try
		{
			con = DBHelper.getConnection();
			 query = "UPDATE WORKERS_TBL SET admin_approval='Approved' WHERE worker_id='"+worker_id+"'";
			ps=con.prepareStatement(query);

			result = ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** :WorkerDL.approveWorker "+e.getMessage());
			
		}
		
		return result;
	}
	public static int changeWorkerStatus(String worker_id)
	{
		int result2 = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		
		try
		{
			con = DBHelper.getConnection();
			 query = "UPDATE WORKERS_TBL SET status='Engaged' WHERE worker_id='"+worker_id+"'";
			ps=con.prepareStatement(query);

			result2 = ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result2 = -1;
			System.out.println("**Error** :WorkerDL.changeWorkerStatus "+e.getMessage());
			
		}
		
		return result2;
	}
	
	public static int deleteRequest(String worker_id)
	{
		int result2 = 0;
		String query;
		PreparedStatement ps;
		Connection con;
		
		try
		{
			con = DBHelper.getConnection();
			 query = "UPDATE WORKERS_TBL SET status='DELREQ' WHERE worker_id='"+worker_id+"'";
			ps=con.prepareStatement(query);

			result2 = ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result2 = -1;
			System.out.println("**Error** :WorkerDL.deleteRequest "+e.getMessage());
			
		}
		
		return result2;
	}
	public static int deleteWorker(String worker_id)
	{
		int  result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="Delete from WORKERS_TBL where WORKER_ID='"+worker_id+"'";
			ps=con.prepareStatement(query);
			result =ps.executeUpdate();
		}catch(Exception e)
		{
			System.out.println("**error** WorkerDL:deleteWorker"+e.getMessage());
		}
		return result;
	}

	public static int updateWorker(WorkerDTO worker)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		
		try
		{
			con=DBHelper.getConnection(); 
			query = "UPDATE WORKERS_TBL SET WORKER_NAME=?,WORKER_ADDRESS=?,GENDER=?,AGE=?,WORK_CATEGORY=?,EXPERIENCE=?,WORKER_PHONE=?,WAGES=?,STATUS=? WHERE WORKER_ID=?";
			ps=con.prepareStatement(query);
			
			ps.setString(1,worker.getWorkerName());
			ps.setString(2,worker.getWorkerAddress());
			ps.setString(3,worker.getGender());
			ps.setString(4,worker.getAge());
			ps.setString(5,worker.getWorkCategory());
			ps.setString(6,worker.getExperience());
			ps.setString(7,worker.getWorkerPhone());
			ps.setInt(8,worker.getWages());
			ps.setString(9,worker.getStatus());
			ps.setString(10,worker.getWorkerId());
			
			result=ps.executeUpdate();
			ps.close();
			 con.close();
			
		}
		catch(Exception e)
		{
			System.out.println("**ERROR** WorkerDL:updateWorker"+e.getMessage());
		}
		
		
		return result;
	}	
	
	public static WorkerDTO getWorker(String WorkerId)
	{
		ArrayList<WorkerDTO> workers=null;
		Connection con=null;
		
		WorkerDTO worker = null;
		Statement statement=null;
		ResultSet resultSet=null;
		
		
		try
		{
				workers=new ArrayList<WorkerDTO>();
				String sql="SELECT * FROM WORKERS_TBL WHERE WORKER_ID='"+WorkerId+"'";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					worker=new WorkerDTO();
					
					worker.setWorkerId(resultSet.getString("WORKER_ID"));
					worker.setWorkerName(resultSet.getString("WORKER_NAME"));
					worker.setWorkerAddress(resultSet.getString("WORKER_ADDRESS"));
					worker.setGender(resultSet.getString("GENDER"));
					worker.setAge(resultSet.getString("AGE"));
					worker.setWorkCategory(resultSet.getString("WORK_CATEGORY"));
					worker.setExperience(resultSet.getString("EXPERIENCE"));
					worker.setWorkerPhone(resultSet.getString("WORKER_PHONE"));
					worker.setWages(resultSet.getInt("WAGES"));
					worker.setStatus(resultSet.getString("STATUS"));
					worker.setAdminApproval(resultSet.getString("ADMIN_APPROVAL"));

					workers.add(worker);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerDL:getworker"+e.getMessage());
		}
		return worker;
	}
	public static WorkerDTO checkPhone(WorkerDTO worker)
	{
		Connection con=null;
		ResultSet resultSet=null;
		WorkerDTO worker2=null;
		try
		{
			String query="select * from WORKERS_TBL where WORKER_PHONE=?";
			con=DBHelper.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement(query);
			ps.setString(1,worker.getWorkerPhone());
			//ps.setString(2,login.getPassword());
		//ps.setString(3,login.getRole());

			//result=ps.executeUpdate();

			resultSet =ps.executeQuery();
				
		if(resultSet.next()) 
		{
			worker2=new WorkerDTO();
			worker2.setWorkerPhone(resultSet.getString("WORKER_PHONE"));


		}

	}
		catch(Exception e)
		{
			System.out.println("*****error** WorkerDL.checkPhone"+e.getMessage());
		}
		return worker2;
}
	
}
