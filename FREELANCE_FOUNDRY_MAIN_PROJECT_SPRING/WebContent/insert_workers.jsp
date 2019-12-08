<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dto.*,ff.dl.*,ff.aig.*"%>
   <%!
    LoginDTO login2=null;
    LoginDTO login3=null;
    WorkerDTO worker2=null;
    WorkerDTO worker3=null;
    int Wages;
    String WorkerId,WorkerName,WorkerAddress,Age,WorkCategory,WorkerPhone,Status,Experience,Gender,Username,Password,Role,AdminApproval;
    
    WorkerDTO worker=null;
    LoginDTO login=null;
    int resultWorker=0,resultLogin=0;
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
	Role=request.getParameter("Role");
	Experience=request.getParameter("Experience");
	WorkerPhone=request.getParameter("WorkerPhone");
	Wages=Integer.parseInt(request.getParameter("Wages"));
	Username=request.getParameter("Username");
	Password=request.getParameter("Password");
	Status=request.getParameter("Status");
	AdminApproval=request.getParameter("admin_approval");
	
	worker=new WorkerDTO();
	worker.setWorkerId(WorkerId);
	worker.setWorkerName(WorkerName);
	worker.setWorkerAddress(WorkerAddress);
	worker.setGender(Gender);
	worker.setAge(Age);
	worker.setWorkCategory(WorkCategory);
	worker.setExperience(Experience);
	worker.setWorkerPhone(WorkerPhone);
	worker.setWages(Wages);
	worker.setStatus(Status);
	worker.setAdminApproval(AdminApproval);
	login=new LoginDTO();
	login.setId(WorkerId);
	login.setUserName(Username);
	login.setPassword(Password);
	login.setRole(Role);

	worker2=new WorkerDTO();
	worker2.setWorkerPhone(WorkerPhone);
	worker3=WorkerBL.checkPhone(worker2);

	
	login2=new LoginDTO();
	login2.setUserName(Username);
	login3=LoginBL.checkUsername(login2);
	int flag=0;
	if(worker3!=null&&worker3.getWorkerPhone().equals(WorkerPhone))
	{
		session.setAttribute("message1", "Phone Number Already Exist\n");
		flag=1;
	}
	
	
	
	
if(login3!=null&&login3.getUserName().equals(Username))
	{
	session.setAttribute("message2", "Username Already Exist\n");

	flag=1;
	}


if(flag==1)
{
	response.sendRedirect("workers_register.jsp");

}
	else if(flag==0)
	{
	


resultWorker=WorkerBL.addWorkers(worker);
resultLogin=LoginBL.addLogin(login);
	}
if(resultLogin>0&&resultWorker>0)
{
	session.setAttribute("message", "Details added successfully");
	
}
else
{
	session.setAttribute("n_message", "retry");
}
response.sendRedirect("register_successfull.jsp");
}

catch(Exception e)
{
	
	System.out.println("**Error** worker : insert_workers" + e.getMessage());
	
	//session.setAttribute("message", "server busy ,pls try again later");
	//response.sendRedirect("worker_add.jsp");
}
%>