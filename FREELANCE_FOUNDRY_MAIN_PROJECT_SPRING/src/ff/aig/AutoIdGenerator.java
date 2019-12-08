package ff.aig;
import ff.dl.*;
public class AutoIdGenerator {

	public static String GenerateId(){
		
		
		String str = new String();
		String newstr = new String();
		String prefix,suffix;
		int isuffix;
		str=WorkerDL.WorkersIdGenerator();
		
		if(str==null)
		{
			newstr="WOR100";
		}
		else
		{
			prefix=str.substring(0,3);
			isuffix=Integer.parseInt(str.substring(3));
			isuffix++;
			newstr=prefix+isuffix;
		}
		
		return newstr;
	}
	
public static String SeekerGenerateId(){
		
		
		String str = new String();
		String newstr = new String();
		String prefix,suffix;
		int isuffix;
		str=SeekerDL.SeekersIdGenerator();
		
		if(str==null)
		{
			newstr="SKR100";
		}
		else
		{
			prefix=str.substring(0,3);
			isuffix=Integer.parseInt(str.substring(3));
			isuffix++;
			newstr=prefix+isuffix;
		}
		
		return newstr;
	}
public static String FeedbackGenerateId(){
	
	
	String str = new String();
	String newstr = new String();
	String prefix,suffix;
	int isuffix;
	str=FeedbackDL.FeedbackIdGenerator();
	
	if(str==null)
	{
		newstr="FED100";
	}
	else
	{
		prefix=str.substring(0,3);
		isuffix=Integer.parseInt(str.substring(3));
		isuffix++;
		newstr=prefix+isuffix;
	}
	
	return newstr;
}
public static java.sql.Date getCurrentDate() {
    java.util.Date today = new java.util.Date();
    return new java.sql.Date(today.getTime());
}
}
