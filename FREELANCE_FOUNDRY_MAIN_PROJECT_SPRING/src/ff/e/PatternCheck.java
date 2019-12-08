package ff.e;
public class PatternCheck {  
	  public static void validate(boolean flag)throws PatternMismatchException{  
		     if(flag==false)  
		      throw new PatternMismatchException("Pattern Mismatch occured");  
		     //else  
		     // System.out.println("welcome to vote");  
		   }  
}