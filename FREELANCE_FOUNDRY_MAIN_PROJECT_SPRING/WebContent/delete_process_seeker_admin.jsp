<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dl.*,ff.dto.*"%>
<%!

	String SeekerId;
	int result=0;
	SeekerDTO seeker;

%>
<%
try
{
	SeekerId=(String)session.getAttribute("id");
	result=SeekerBL.deleteSeeker(SeekerId);
	
}
catch(Exception e)
{
	System.out.println("**Error: seekers_delete.jsp:"+e.getMessage());
}
response.sendRedirect("seeker_removal.jsp");
%>