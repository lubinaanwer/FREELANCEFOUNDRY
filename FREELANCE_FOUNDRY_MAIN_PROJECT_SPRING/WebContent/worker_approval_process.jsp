<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*" %>
    
<%!
	String worker_id="";
	int result=0;
%>
	
<%

	try
	{
		worker_id=request.getParameter("worker_id");
		result=WorkerBL.approveWorker(worker_id);
		if(result>0)
		{
			session.setAttribute("p_message","worker with worker id: "+worker_id+"is approved ");
			response.sendRedirect("worker_approval.jsp");}
		else
		{
			session.setAttribute("n_message","Error occured...Please try again");
		}
		
	}
	catch(Exception e)
	{
		System.out.println("**Error**: Seeker: seeker_approval_process"+e.getMessage());
		session.setAttribute("n_message","something went wrong...");
		response.sendRedirect("admin_home.jsp");
	}
%>
