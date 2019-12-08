<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*" %>
    
<%!
String seeker_id="";
int result=0;
%>
	<%if(session.getAttribute("message")!=null)
                  {
                	  out.println((String)session.getAttribute("message"));
                  }
                  %>
<% 

try
{
	boolean flag=true;
	seeker_id=request.getParameter("seeker_id");
	result= HiresBL.manageRequest(seeker_id,flag);
	if(result>0)
	{%>
		 
		<%!
			String worker_id="";
			int result2=0;
			%><% 
			worker_id=(String)session.getAttribute("id"); 
			result=WorkerBL.changeWorkerStatus(worker_id);

			session.setAttribute("p_message","successfull action on request by "+seeker_id+" ");
			response.sendRedirect("worker_home.jsp");}
	
	else
	{
		session.setAttribute("message","Please try again");
	}
	
}
catch(Exception e)
{
	System.out.println("**Error**: Seeker: request_status_process"+e.getMessage());
	session.setAttribute("n_message","Something went wrong )");
	response.sendRedirect("view_job_request.jsp");
}
%>
