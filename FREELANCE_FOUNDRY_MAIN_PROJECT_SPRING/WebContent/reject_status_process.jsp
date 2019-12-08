<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*" %>
    
<%!
String seeker_id="";
int result=0;
%>
	
<%

try
{
	boolean flag=false;
	seeker_id=request.getParameter("seeker_id");
	result= HiresBL.manageRequest(seeker_id,flag);
	if(result>0)
	{ 
		session.setAttribute("message","request of seeker with seeker id: "+seeker_id+"is accepted ");
		response.sendRedirect("worker.jsp");}
	else
	{
		session.setAttribute("message","Please try again");
	}
	
}
catch(Exception e)
{
	System.out.println("**Error**: Seeker: request_status_process"+e.getMessage());
	session.setAttribute("message","Please enter valid id");
	response.sendRedirect("worker.jsp");
}
%>
