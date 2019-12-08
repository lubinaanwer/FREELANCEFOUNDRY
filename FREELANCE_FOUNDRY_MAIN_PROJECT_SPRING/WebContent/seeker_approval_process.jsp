<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*" %>
    
<%!
String seeker_id="";
int result=0;
%>
	
<%

try
{
	seeker_id=request.getParameter("seeker_id");
	result=SeekerBL.approveSeeker(seeker_id);
	if(result>0)
	{
		session.setAttribute("message","worker with seeker id: "+seeker_id+"is approved ");
		response.sendRedirect("seeker_approval.jsp");}
	else
	{
		session.setAttribute("message","Please try again");
	}
	
}
catch(Exception e)
{
	System.out.println("**Error**: Seeker: seeker_approval_process"+e.getMessage());
	session.setAttribute("message","Please enter valid id");
	response.sendRedirect("seeker_removal.jsp");
}
%>
