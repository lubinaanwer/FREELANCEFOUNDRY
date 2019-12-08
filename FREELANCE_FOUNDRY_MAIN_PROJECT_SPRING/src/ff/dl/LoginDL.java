
package ff.dl;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import ff.dto.LoginDTO;

public class LoginDL {
	
	public static int addLogin(LoginDTO login)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query="insert into LOGIN(USERNAME,PASSWORD,ROLE,ID)VALUES(?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1,login.getUserName());
			ps.setString(2,login.getPassword());
			ps.setString(3,login.getRole());
			ps.setString(4,login.getId());

			result =ps.executeUpdate();
			
		}catch(Exception e)
		{
			result=-1;
			System.out.println("**error** WorkerDL:addLogin"+e.getMessage());
		}
		return result;
	}
	public static LoginDTO Login(LoginDTO login)
	{
		Connection con=null;
		ResultSet resultSet=null;
		LoginDTO login2=null;
		try
		{
			//String query="select * from LOGIN where username=? and password=? and STATUS='Available'" ;
			String query="select * from LOGIN where username=? and password=?" ;
			con=DBHelper.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement(query);
			ps.setString(1,login.getUserName());
			ps.setString(2,login.getPassword());
		//ps.setString(3,login.getRole());

			//result=ps.executeUpdate();
ps.executeQuery();
			resultSet =ps.executeQuery();
				
		if(resultSet.next()) 
		{
			login2=new LoginDTO();
			login2.setUserName(resultSet.getString("USERNAME"));
			login2.setPassword(resultSet.getString("PASSWORD"));
			login2.setRole(resultSet.getString("ROLE"));
			login2.setId(resultSet.getString("ID"));
		}

	}
		catch(Exception e)
		{
			System.out.println("*****error** LoginDL.login"+e.getMessage());
		}
		return login2;
}
	public static LoginDTO checkUsername(LoginDTO login)
	{
		Connection con=null;
		ResultSet resultSet=null;
		LoginDTO login2=null;
		try
		{
			String query="select * from LOGIN where username=?";
			con=DBHelper.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement(query);
			ps.setString(1,login.getUserName());
			//ps.setString(2,login.getPassword());
		//ps.setString(3,login.getRole());

			//result=ps.executeUpdate();
ps.executeQuery();
			resultSet =ps.executeQuery();
				
		if(resultSet.next()) 
		{
			login2=new LoginDTO();
			login2.setUserName(resultSet.getString("Username"));
			login2.setPassword(resultSet.getString("Password"));
			login2.setRole(resultSet.getString("role"));
			login2.setId(resultSet.getString("Id"));
		}

	}
		catch(Exception e)
		{
			System.out.println("*****error** LoginDL.checkUsername"+e.getMessage());
		}
		return login2;
}
}