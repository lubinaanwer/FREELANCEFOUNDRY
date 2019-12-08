<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,ff.bl.*,ff.dl.*,ff.dto.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Freelance &mdash;Foundry &mdash; Admin</title>
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
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    <!-- Navigation bar start -->
    <div class="site-navbar-wrap js-site-navbar bg-white">
      
      <div class="container">
        <div class="site-navbar bg-light">
          <div class="py-1">
            <div class="row align-items-center">
              <div class="col-2">
                <h2 class="mb-0 site-logo"><a href="index.html">Freelance<strong class="font-weight-bold">Foundry</strong> </a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li><a href="worker_home.jsp">Home</a></li>
                    <li><a href="workers_update.jsp">Edit Profile</a></li>
                    <li><a href="workers_delete.jsp">Delete Profile</a></li>
                    <li><a href="view_job_request.jsp">View Requests</a></li>
                    <li><a href="feedback_add.jsp">View Feedback</a></li>
                    <li><a href="user_login.jsp">Logout</a></li>
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
				<div class="table100 ver1 m-b-150">
				
     <h3>Pending Seeker Requests</h3>
<%!
String worker_id;
 ArrayList<HiresDTO> hirers=null;%>

<%
worker_id=(String)session.getAttribute("id");
hirers=HiresBL.getHirers(worker_id); 

					  if(hirers!=null &&(hirers.size()>0))
					  {
					  %> 
					<table data-vertable="ver1">
						<thead>
							<tr class="row100 head">
								<th class="column100 column1" data-column="column1">SEEKER ID</th>
								<th class="column100 column2" data-column="column2">SEEKER NAME</th>
								<th class="column100 column3" data-column="column3">SEEEKER ADDRESS</th>
								<th class="column100 column4" data-column="column4">SEEEKER PHONE</th>
								<th class="column100 column5" data-column="column5">ACTION</th></tr>
						</thead>
						<tbody>
						<%for(HiresDTO hirer:hirers)
					        	  {
									SeekerDTO seeker=null;
									String SeekerId=hirer.getSeekerId();
									seeker=SeekerBL.getSeeker(SeekerId);
									%>
								<tr>
									<td><%=hirer.getSeekerId()%></td>
									<td><%=seeker.getSeekerName()%></td>
									<td><%=seeker.getSeekerAddress()%></td>
									<td><%=seeker.getSeekerPhone()%></td>
									<td><%=hirer.getAcceptStatus()+"  " %><a href="accept_status_process.jsp?seeker_id=<%=hirer.getSeekerId()%>">Accept</a>&nbsp;<a href="reject_status_process.jsp?seeker_id=<%=hirer.getSeekerId()%>">Reject</a></td>
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

  </div>

  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/jquery-3.3.1.min.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/jquery-ui.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/popper.min.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/bootstrap.min.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/owl.carousel.min.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/jquery.stellar.min.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/jquery.countdown.min.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/jquery.magnific-popup.min.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/bootstrap-datepicker.min.js"></script>
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/aos.js"></script>

  
  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/mediaelement-and-player.min.js"></script>

  <script src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/js/main.js"></script>
  
  </body>
</html>