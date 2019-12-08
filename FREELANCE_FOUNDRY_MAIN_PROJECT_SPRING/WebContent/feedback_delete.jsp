<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dl.*,ff.dto.*"%>
<%!

	String FeedbackId;
	int result=0;
FeedbackDTO feedback;

%>
<%
try
{
	FeedbackId=request.getParameter("FeedbackId");
	result=FeedbackBL.deleteFeedback(FeedbackId);
	
}
catch(Exception e)
{
	System.out.println("**Error: feedback_delete.jsp:"+e.getMessage());
}
response.sendRedirect("admin.jsp");
%>