<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,ff.bl.*,ff.dl.*,ff.dto.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>view &mdash;all &mdash;workers</title>
	
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700|Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/fonts/icomoon/style.css">

    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/css/magnific-popup.css">
    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/css/jquery-ui.css">
    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/css/owl.carousel.min.css">
    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/css/animate.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    
   	<link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/css/aos.css">

    <link rel="stylesheet" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/css/style.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/css/util.css">
	<link rel="stylesheet" type="text/css" href="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/css/main.css">
<!--===============================================================================================-->
</head>
<body>
 <div  style="text-align: right;right: 20px; top: 0px;color:green">
     <%
if(session.getAttribute("user_name")!=null)
{
}
else
{
	response.sendRedirect("user_login.jsp");
}
%>
   

  <%if(session.getAttribute("p_message")!=null)
                  {
                	  out.println((String)session.getAttribute("p_message"));
                	  session.removeAttribute("p_message");
                  }
                  %></div>
                   <div  style="text-align: right;right: 20px; top: 0px;color:red">
  <%if(session.getAttribute("n_message")!=null)
                  {
                	  out.println((String)session.getAttribute("n_message"));
                	  session.removeAttribute("n_message");
                  }
                  %></div>
                    <div  style="text-align: right;right: 20px; top: 0px;">
  <%if(session.getAttribute("message")!=null)
                  {
                	  out.println((String)session.getAttribute("message"));
                	  session.removeAttribute("message");
                  }
                  %></div>
    <!-- Navigation bar start -->
    <div class="site-navbar-wrap js-site-navbar bg-white">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
                <h2 class="mb-0 site-logo"><a href="index.jsp">Freelance<strong class="font-weight-bold">Foundry</strong> </a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li><a href="index.jsp">Home</a></li>
                      <li class="has-children">
                        <a href="category.html">View Users</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="view_all_workers.jsp">Workers</a></li>
                          <li><a href="view_all_seekers.jsp">Resource Seekers</a></li>
                        </ul>
                      </li>
	                      <li class="has-children">
	                        <a href="category.html">View Requests</a>
	                        <ul class="dropdown arrow-top">
	                          <li><a href="worker_approval.jsp">Worker Approval</a></li>
	                         <!--  <li><a href="worker_approval.jsp">Worker Removal</a></li>--> 
	                          <li><a href="seeker_approval.jsp">Resource seeker Approval</a></li>
	                         <!-- <li><a href="admin.jsp">Resource seeker Approval</a></li>--> 
	                         <!-- <li class="has-children">
	                            <a href="#">More Links</a>
	                            <ul class="dropdown">
	                              <li><a href="#">Browse Candidates</a></li>
	                              <li><a href="#">Post a Job</a></li>
	                              <li><a href="#">Employeer Profile</a></li>
	                            </ul>
	                          </li>-->
	
	                        </ul>
	                      </li>
                      <li><a href="contact.html">View Feedback</a></li>
                      <li><a href="user_login.jsp">Logout</a></li>
                      <!--  <li><a href="new-post.html"><span class="bg-primary text-white py-3 px-4 rounded"><span class="icon-plus mr-3"></span>Post New Job</span></a></li>-->
                    </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Navigation bar End -->	
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-150"><br><br><br>
					<% 
						  ArrayList<WorkerDTO> workers=WorkerBL.getApprovedWorkers();
						  if(workers!=null &&(workers.size()>0))
						  {
					  %>
					<table data-vertable="ver1">
						<thead>
							<tr class="row100 head">
								<th class="column100 column1" data-column="column1">ID</th>
								<th class="column100 column2" data-column="column2">NAME</th>
								<th class="column100 column3" data-column="column3">ADDRESS</th>
								<th class="column100 column4" data-column="column4">GENDER</th>
								<th class="column100 column5" data-column="column5">AGE</th>
								<th class="column100 column6" data-column="column6">EXPERIENCE</th>
								<th class="column100 column7" data-column="column7">CATEGORY</th>
								<th class="column100 column8" data-column="column8">PHONE NUMBER</th>
								<th class="column100 column9" data-column="column9">WAGES(Per Hr)</th>
								<th class="column100 column10" data-column="column10">STATUS</th>
								<th class="column100 column11" data-column="column11">EDIT</th>
								<th class="column100 column12" data-column="column12">DELETE</th>
							</tr>
						</thead>
						<tbody>
						<%for(WorkerDTO worker:workers)
					        	  {%>
							<tr class="row100">
								<td class="column100 column1" data-column="column1"><%=worker.getWorkerId()%></td>
								<td class="column100 column2" data-column="column2"><%=worker.getWorkerName()%></td>
								<td class="column100 column3" data-column="column3"><%=worker.getWorkerAddress()%></td>
								<td class="column100 column4" data-column="column4"><%=worker.getGender()%></td>
								<td class="column100 column5" data-column="column5"><%=worker.getAge()%></td>
								<td class="column100 column6" data-column="column6"><%=worker.getExperience()%></td>
								<td class="column100 column7" data-column="column7"><%=worker.getWorkCategory()%></td>
								<td class="column100 column8" data-column="column8"><%=worker.getWorkerPhone()%></td>
								<td class="column100 column9" data-column="column9"><%=worker.getWages()%></td>
								<td class="column100 column10" data-column="column10"><%=worker.getStatus()%></td>
								<td class="column100 column11" data-column="column11">
								<a href="workers_update.jsp?WorkerId=<%=worker.getWorkerId()%>">Edit</a></td>
								<td class="column100 column12" data-column="column12">
								<a href="workers_delete.jsp?WorkerId=<%=worker.getWorkerId()%>" onclick="return confirm('Are you sure?')">Delete</a></td>
							</tr>
								
								<%}
					          }
					          else
					          {%>
					          <tr>
					          <td colspan="7">No Records Found</td>
					          </tr>
					          <%} %>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	

<!--===============================================================================================-->	
	<script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/vendor/bootstrap/js/popper.js"></script>
	<script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/table/js/main.js"></script>

</body>
</html>