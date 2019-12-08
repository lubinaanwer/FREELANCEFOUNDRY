<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dto.*,ff.dl.*,ff.aig.*"%>

    <%!
    
    	String WorkerId,SeekerId;
	   HiresDTO hire=null;
	    int result=0;
    %>
<%

	try
	{
		WorkerId=request.getParameter("WorkerId");
		SeekerId=request.getParameter("SeekerId");
	
		hire=new HiresDTO();
		hire.setSeekerId(SeekerId);
		hire.setWorkerId(WorkerId);
	
		result=HiresBL.addBooking(hire);
	
		if(result>0)
		{
			session.setAttribute("p_message", "Booking done successfully");
			
		}
		else
		{
			session.setAttribute("n_message", "Error Occured..Booking unsuccessfull.");
		}
			
			response.sendRedirect("view_all_workers_for_seeker.jsp");
	}
	catch(Exception e)
	{
		
		System.out.println("**Error** worker : workers_booking" + e.getMessage());
		
		session.setAttribute("message", "Something went wrong...please try again later");
		//response.sendRedirect("worker_add.jsp");
	}
%>