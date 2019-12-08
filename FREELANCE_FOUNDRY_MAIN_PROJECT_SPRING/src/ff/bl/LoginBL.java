package ff.bl;
import ff.dl.LoginDL;
import ff.dto.LoginDTO;

import java.util.*;
import java.sql.*;
public class LoginBL {

	public static int addLogin(LoginDTO login)
	{
		int result=0;
		try
		{
			
			result=LoginDL.addLogin(login);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**error** LoginBL:addLogin"+e.getMessage());
		}
		return result;
	}
	public static LoginDTO Login(LoginDTO login)
	{
		LoginDTO login2=null;
		
		try
		{
		login2=LoginDL.Login(login);
		}
		catch(Exception e)
		{
			System.out.println("**error** LoginBL:Login"+e.getMessage());
		}
		return login2;
	}
	public static LoginDTO checkUsername(LoginDTO login)
	{
		LoginDTO login2=null;
		
		try
		{
		login2=LoginDL.checkUsername(login);
		}
		catch(Exception e)
		{
			System.out.println("**error** LoginBL:checkUsername"+e.getMessage());
		}
		return login2;
	}
	

}
