<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dto.*,ff.dl.*,ff.aig.*"%>
    <%
   
    String SeekerId,SeekerName,SeekerAddress,SeekerPhone,Username,Password,Role,AdminApproval;
    
    SeekerDTO seeker=null;
    LoginDTO login=null;
    int result=0;
    %>
<%
try
{
	
	SeekerId=request.getParameter("SeekerId");
	SeekerName=request.getParameter("SeekerName");
	SeekerAddress=request.getParameter("SeekerAddress");
	SeekerPhone=request.getParameter("SeekerPhone");
	Username=request.getParameter("Username");
	Password=request.getParameter("Password");
	Role=request.getParameter("Role");
	AdminApproval=request.getParameter("admin_approval");
	
	seeker=new SeekerDTO();
	seeker.setSeekerId(SeekerId);
	seeker.setSeekerName(SeekerName);
	seeker.setSeekerAddress(SeekerAddress);
	seeker.setSeekerPhone(SeekerPhone);
	seeker.setAdminApproval(AdminApproval);
	
	login=new LoginDTO();
	login.setUserName(Username);
	login.setPassword(Password);
	login.setRole(Role);
	login.setId(SeekerId);

result=SeekerBL.addSeekers(seeker);
result=LoginBL.addLogin(login);

if(result>0)
{
	session.setAttribute("p_message", "Details added successfully");
	
}
else
{
	session.setAttribute("n_message", "error occured...please try again");
}
response.sendRedirect("register_successfull.jsp");
}
catch(Exception e)
{
	
	System.out.println("**Error** seeker : insert_seekers" + e.getMessage());
	
	session.setAttribute("n_message", "something went wrong..,please try again later");
	//response.sendRedirect("seeker_add.jsp");
}
%>