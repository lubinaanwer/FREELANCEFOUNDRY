<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.dl.*,ff.bl.*,ff.dto.*"%>
    <%
	    
	    String SeekerId,SeekerName,SeekerAddress,SeekerPhone;
	    SeekerDTO seeker=null;
    	int result=0;
    %>
<%
try
{
	SeekerId=request.getParameter("SeekerId");
	SeekerName=request.getParameter("SeekerName");
	SeekerAddress=request.getParameter("SeekerAddress");
	SeekerPhone=request.getParameter("SeekerPhone");
		
		seeker=new SeekerDTO();
		
		seeker.setSeekerId(SeekerId);
		seeker.setSeekerName(SeekerName);
		seeker.setSeekerAddress(SeekerAddress);
		seeker.setSeekerPhone(SeekerPhone);
		
		
		
		result=SeekerBL.updateSeeker(seeker);

if(result>0)
{
	session.setAttribute("p_message", "details updated successfully");
	
}
else
{
	session.setAttribute("n_message", "error occured...please try again..");
}
response.sendRedirect("seeker_update_success.jsp");
}
catch(Exception e)
{
	session.setAttribute("n_message", "something went wrong...");
	response.sendRedirect("seekers_update.jsp");
}
%>