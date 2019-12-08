
<%@page import="ff.bl.LoginBL,ff.dto.*"%>

<%!
String Username,Password,Role,id;
LoginDTO login=null;
LoginDTO login2=null;
%>
<%
try{
Username=request.getParameter("username");
Password=request.getParameter("password");
login=new LoginDTO();
login.setUserName(Username);
login.setPassword(Password);
//login.setRole(Role);
login2=LoginBL.Login(login);
if(login2!=null)
{
	  session.setAttribute("user_name", login2.getUserName());
	  session.setAttribute("pass_word", login2.getPassword());

}
else
{
	  out.println("Wrong userID/password");
}
if(login2!=null&&login2.getRole().equals("resource seeker"))
{
id=login2.getId();

out.println("Your successfully logged in");
session.setAttribute("session","TRUE");
session.setAttribute("p_message","Welcome " +request.getParameter("username"));
session.setAttribute("id",id);
response.sendRedirect("seeker_home.jsp");

}
else if(login2!=null&&login2.getRole().equals("worker"))
{
	id=login2.getId();
out.println("Your successfully logged in");
session.setAttribute("session","TRUE");
session.setAttribute("p_message","Welcome "+request.getParameter("username"));
session.setAttribute("id",id);
response.sendRedirect("worker_home.jsp");

}
else if(login2!=null&&login2.getRole().equals("admin"))
{
	id=login2.getId();
out.println("Welcome Admin");
session.setAttribute("session","TRUE");
session.setAttribute("p_message","Welcome "+request.getParameter("username"));
session.setAttribute("id",id);
response.sendRedirect("admin_home.jsp");

}
else 
{
out.print("Sorry, email or password error");
session.setAttribute("invalid_message","Sorry.. Invalid Username or Password");
response.sendRedirect("user_login.jsp");
}
}
catch(Exception e)
{
	
	System.out.println("**Error** login : login_process" + e.getMessage());
	
	session.setAttribute("message", "Login process failure");
}
%>