package ff.bl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.util.ArrayList;

import ff.dl.DBHelper;
import ff.dl.SeekerDL;
import ff.dl.WorkerDL;
import ff.dto.SeekerDTO;
import ff.dto.WorkerDTO;


public class WorkerBL {
	
	public static int addWorkers(WorkerDTO worker)
	{
		int result=0;
		try
		{
			
			result=WorkerDL.addWorkers(worker);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**error** WorkerBL:addworkers"+e.getMessage());
		}
		return result;
	}
	public static ArrayList<WorkerDTO> getDeletionRequests()
	{
		ArrayList<WorkerDTO> workers=null;
		try
		{
			workers= WorkerDL.getDeletionRequests();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:getDeletionRequests"+e.getMessage());
		}
		return workers;
	}

	public static ArrayList<WorkerDTO> getApprovedWorkers()
	{
		ArrayList<WorkerDTO> workers=null;
		try
		{
			workers= WorkerDL.getApprovedWorkers();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:getWorkers"+e.getMessage());
		}
		return workers;
	}
	public static ArrayList<WorkerDTO> getPendingWorkers()
	{
		ArrayList<WorkerDTO> workers=null;
		try
		{
			workers= WorkerDL.getPendingWorkers();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:getWorkers"+e.getMessage());
		}
		return workers;
	}
	public static ArrayList<WorkerDTO> getAllWorkers()
	{
		ArrayList<WorkerDTO> workers=null;
		try
		{
			workers= WorkerDL.getAllWorkers();
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:getWorkers"+e.getMessage());
		}
		return workers;
	}
	public static int deleteWorker(String worker_id)
	{

	int result = 0;

	try
	{

	result = WorkerDL.deleteWorker(worker_id);

	}
	catch(Exception e)
	{
	result=-1;
	System.out.println("**Error** : WorkerBL.deleteWorker "+e.getMessage());

	}

	return result;
}
	public static int updateWorker(WorkerDTO worker)
	{
		int result=0;
		

	try
	{
		
		result = WorkerDL.updateWorker(worker);
	}
	catch(Exception e)
	{
		
		System.out.println("**error**"+":updateWorker"+e.getMessage());
	}
	return result;
	}
	public static WorkerDTO getWorker(String WorkerId)
	{
		
		WorkerDTO worker = null;
		
		
		try
		{
			worker = WorkerDL.getWorker(WorkerId);
		}
				
			
		catch(Exception e) 
		{
			System.out.println("**Error** : WorkerBL.getWorker "+e.getMessage());
			
		}
		
		return worker;
	}
	
	public static ArrayList<WorkerDTO> getWorkers(String worker_category)
	{
		ArrayList<WorkerDTO> workers=null;
		try
		{
			workers= WorkerDL.getWorkers(worker_category);
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:getWorkers"+e.getMessage());
		}
		return workers;
	}
	
	public static int approveWorker(String  worker_id)
	{
		int result=0;
		

	try
	{   
		result= WorkerDL.approveWorker(worker_id);
		

	}
	catch(Exception e)
	{
		
		System.out.println("**error**"+":approveWorkerBL"+e.getMessage());
	}
	return result;
	}
	public static int changeWorkerStatus(String  worker_id)
	{
		int result2=0;
		

	try
	{   
		result2= WorkerDL.changeWorkerStatus(worker_id);
		

	}
	catch(Exception e)
	{
		
		System.out.println("**error**"+"WorkerBL:changeWorkerStatus"+e.getMessage());
	}
	return result2;
	}
	public static int deleteRequest(String  worker_id)
	{
		int result2=0;
		

	try
	{   
		result2= WorkerDL.deleteRequest(worker_id);
		

	}
	catch(Exception e)
	{
		
		System.out.println("**error**"+"WorkerBL:changeWorkerStatus"+e.getMessage());
	}
	return result2;
	}
	
	public static WorkerDTO checkPhone(WorkerDTO worker)
	{
		WorkerDTO worker2=null;
		
		try
		{
		worker2=WorkerDL.checkPhone(worker);
		}
		catch(Exception e)
		{
			System.out.println("**error** WorkerBL:checkPhone"+e.getMessage());
		}
		return worker2;
	}
	
}
