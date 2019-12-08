<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.dl.*,ff.bl.*,ff.dto.*"%>
    <%
	    int Wages;
	    String WorkerId,WorkerName,WorkerAddress,WorkerPhone,WorkCategory,Experience,Age,Gender,Status;
	    WorkerDTO worker=null;
    	int result=0;
    %>
<%
try
{
	WorkerId=request.getParameter("WorkerId");
	WorkerName=request.getParameter("WorkerName");
	WorkerAddress=request.getParameter("WorkerAddress");
	Gender=request.getParameter("Gender");
	Age=request.getParameter("Age");
	WorkCategory=request.getParameter("WorkCategory");
	Experience=request.getParameter("Experience");
	WorkerPhone=request.getParameter("WorkerPhone");
	Wages=Integer.parseInt(request.getParameter("Wages"));
	Status=request.getParameter("Status");
		
		worker=new WorkerDTO();
		
		worker.setWorkerId(WorkerId);
		worker.setWorkerName(WorkerName);
		worker.setWorkerAddress(WorkerAddress);
		worker.setGender(Gender);
		worker.setAge(Age);
		worker.setWorkCategory(WorkCategory);
		worker.setWorkerPhone(WorkerPhone);
		worker.setStatus(Status);
		worker.setExperience(Experience);
		worker.setWages(Wages);
		
		
		result=WorkerBL.updateWorker(worker);

if(result>0)
{
	session.setAttribute("p_message", "details updated successfully");
	
}
else
{
	session.setAttribute("n_message", "error occured..please try again");
}
response.sendRedirect("worker_update_success.jsp");
}
catch(Exception e)
{
	session.setAttribute("n_message", "something went wrong...");
	response.sendRedirect("workers_update.jsp");
}
%>