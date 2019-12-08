<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dl.*,ff.dto.*"%>
<%!

	String WorkerId;
	int result=0;
	WorkerDTO worker;

%>
<%
try
{
	WorkerId=(String)session.getAttribute("id");
	result=WorkerBL.deleteWorker(WorkerId);
	
}
catch(Exception e)
{
	System.out.println("**Error: workers_delete.jsp:"+e.getMessage());
}
response.sendRedirect("worker_removal.jsp");
%>