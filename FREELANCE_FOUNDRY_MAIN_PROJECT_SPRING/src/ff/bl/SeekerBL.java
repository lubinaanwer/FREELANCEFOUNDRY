package ff.bl;
import ff.dl.*;
import ff.dto.*;
import java.util.*;
import java.sql.*;
public class SeekerBL {

	public static int addSeekers(SeekerDTO seeker)
	{
		int result=0;
		try
		{
			
			result=SeekerDL.addSeekers(seeker);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**error** SeekerBL:addSeekers"+e.getMessage());
		}
		return result;
	}
	public static SeekerDTO getSeeker(String SeekerId)
	{
		
		SeekerDTO seeker = null;
		
		
		try
		{
			seeker = SeekerDL.getSeeker(SeekerId);
		}
				
			
		catch(Exception e) 
		{
			System.out.println("**Error** : WorkerBL.getWorker "+e.getMessage());
			
		}
		
		return seeker;
	}
	public static ArrayList<SeekerDTO> getApprovedSeekers()
	{
		ArrayList<SeekerDTO> seekers=null;
		try
		{
			seekers= SeekerDL.getApprovedSeekers();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:getWorkers"+e.getMessage());
		}
		return seekers;
	}
	public static ArrayList<SeekerDTO> getPendingSeekers()
	{
		ArrayList<SeekerDTO> seekers=null;
		try
		{
			seekers= SeekerDL.getPendingSeekers();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:getWorkers"+e.getMessage());
		}
		return seekers;
	}
	public static ArrayList<SeekerDTO> getAllSeekers()
	{
		ArrayList<SeekerDTO> seekers=null;
		try
		{
			seekers= SeekerDL.getAllSeekers();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:getWorkers"+e.getMessage());
		}
		return seekers;
	}
	
	
	public static int updateSeeker(SeekerDTO seeker)
	{
		int result=0;
		
		try
		{
			result=SeekerDL.updateSeeker(seeker);
			
		}catch(Exception e)
		{
			System.out.println("**error** SeekerBL:updateSeeker"+e.getMessage());
		}
		return result;
	}
	
	public static int deleteSeeker(String seeker_id)
	{

	int result = 0;

	try
	{

	result = SeekerDL.deleteSeeker(seeker_id);

	}
	catch(Exception e)
	{
	result=-1;
	System.out.println("**Error** : SeekerBL.deleteSeeker "+e.getMessage());

	}

	return result;
}
	public static int approveSeeker(String seeker_id)
	{
		int result=0;
		

	try
	{   
		result= SeekerDL.approveSeeker(seeker_id);
		

	}
	catch(Exception e)
	{
		
		System.out.println("**error**"+":approveSeekerBL"+e.getMessage());
	}
	return result;
	}
	public static int deleteRequest(String  seeker_id)
	{
		int result2=0;
		

	try
	{   
		result2= SeekerDL.deleteRequest(seeker_id);
		

	}
	catch(Exception e)
	{
		
		System.out.println("**error**"+"SeekerDL:deleteRequest"+e.getMessage());
	}
	return result2;
	}
	public static ArrayList<SeekerDTO> getDeletionRequests()
	{
		ArrayList<SeekerDTO> seekers=null;
		try
		{
			seekers= SeekerDL.getDeletionRequests();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:getDeletionRequests"+e.getMessage());
		}
		return seekers;
	}
	public static SeekerDTO checkPhone(SeekerDTO seeker)
	{
		SeekerDTO seeker2=null;
		
		try
		{
		seeker2=SeekerDL.checkPhone(seeker);
		}
		catch(Exception e)
		{
			System.out.println("**error** LoginBL:checkPhone"+e.getMessage());
		}
		return seeker2;
	}
}
