<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dto.*,ff.dl.*,ff.aig.*"%>
    <%
   
    String FeedbackId,SeekerId,WorkerId,Feedback,FeedbackDate;
    
    FeedbackDTO feedback=null;
    int result=0;
    
    %>
<%
try
{
	String feedback_id=AutoIdGenerator.FeedbackGenerateId();
	FeedbackId=feedback_id;
	SeekerId=request.getParameter("SeekerId");
	WorkerId=request.getParameter("WorkerId");
	FeedbackDate=request.getParameter("FeedbackDate");
	Feedback=request.getParameter("Feedback");
	
	feedback=new FeedbackDTO();
	feedback.setFeedbackId(FeedbackId);
	feedback.setSeekerId(SeekerId);
	feedback.setWorkerId(WorkerId);
	feedback.setFeedbackDate(FeedbackDate);
	feedback.setFeedback(Feedback);
	result=FeedbackBL.addFeedback(feedback);


if(result>0)
{
	session.setAttribute("p_message", "Feedback given successfully");
//	response.sendRedirect("resource_seeker.jsp");

}
else
{
	session.setAttribute("n_message", "Error Occured..Please retry");
}
response.sendRedirect("seeker_home.jsp");
}
catch(Exception e)
{
	
	System.out.println("**Error** insert_feedback" + e.getMessage());
	
	session.setAttribute("n_message", "Ooops..something went wrong..");
	response.sendRedirect("seeker_home.jsp");
}
%>