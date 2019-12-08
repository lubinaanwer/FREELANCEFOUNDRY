package ff.bl;

import java.util.ArrayList;

import ff.dl.HiresDL;
import ff.dto.HiresDTO;

public class HiresBL {
	public static int addBooking(HiresDTO hire)
	{
		int result=0;
		try 
		{
			
			result=HiresDL.addBooking(hire);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**error** WorkerBL:addworkers"+e.getMessage());
		}
		return result;
	}
	public static ArrayList<HiresDTO> getHirers(String Worker_id)
	{
		ArrayList<HiresDTO> hirers=null;
		try
		{
			hirers= HiresDL.getHirers(Worker_id);
		}
		catch(Exception e)
		{
			System.out.println("**error** HiresBL:getH"+e.getMessage());
		}
		return hirers;
	}
	public static ArrayList<HiresDTO> generateFeedback(String seeker_id)
	{
		ArrayList<HiresDTO> hirers=null;
		try
		{
			hirers= HiresDL.generateFeedback(seeker_id);
		}
		catch(Exception e)
		{
			System.out.println("**error** HiresBL:getH"+e.getMessage());
		}
		return hirers;
	}
	public static int manageRequest(String seeker_id,boolean flag)
	{
		int result=0;
		

	try
	{   
		result= HiresDL.manageRequest(seeker_id,flag);
		

	}
	catch(Exception e)
	{
		
		System.out.println("**error**"+"HiresBL:manageRequest"+e.getMessage());
	}
	return result;
	}
	
}
