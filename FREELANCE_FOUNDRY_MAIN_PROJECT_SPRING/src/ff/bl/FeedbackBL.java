package ff.bl;

import java.util.ArrayList;

import ff.dl.FeedbackDL;
import ff.dl.WorkerDL;
import ff.dto.FeedbackDTO;

public class FeedbackBL {
	
	public static int addFeedback(FeedbackDTO feedback)
	{
		int result=0;
		try
		{
			
			result=FeedbackDL.addFeedback(feedback);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**error** FeedbackBL:addFeedback"+e.getMessage());
		}
		return result;
	}
	public static ArrayList<FeedbackDTO> getFeedbacks()
	{
		ArrayList<FeedbackDTO> feedbacks=null;
		try
		{
			feedbacks= FeedbackDL.getFeedbacks();
		}
		catch(Exception e)
		{
			System.out.println("**error** FeedbackBL:getFeedbacks"+e.getMessage());
		}
		return feedbacks;
	}
	public static ArrayList<FeedbackDTO> getWorkerFeedbacks(String worker_id)
	{
		ArrayList<FeedbackDTO> feedbacks=null;
		try
		{
			feedbacks= FeedbackDL.getWorkerFeedbacks(worker_id);
		}
		catch(Exception e)
		{
			System.out.println("**error** FeedbackBL:getFeedbacks"+e.getMessage());
		}
		return feedbacks;
	}
	public static int deleteFeedback(String feedback_id)
	{

	int result = 0;

	try
	{

	result = FeedbackDL.deleteFeedback(feedback_id);

	}
	catch(Exception e)
	{
	result=-1;
	System.out.println("**Error** : FeedbackDL.deleteFeedback "+e.getMessage());

	}
	return result;
}
}