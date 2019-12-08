<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,ff.bl.*,ff.dl.*,ff.dto.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>View &mdash;Feedbacks</title>
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
                    <li><a href="index.jsp">Home</a></li>
                      <li class="has-children">
                      <a href="admin_home.jsp">View Users</a>
                        <ul class="dropdown arrow-top">
                          <li><a href="view_all_workers_admin.jsp">Workers</a></li>
                          <li><a href="view_all_seekers_admin.jsp">Resource Seekers</a></li>
                        </ul>
                      </li>
	                      <li class="has-children">
	                        <a href="admin_home.jsp">View Requests</a>
	                        <ul class="dropdown arrow-top">
	                          <li><a href="worker_approval.jsp">Worker Approval</a></li>
	                          <li><a href="worker_removal.jsp">Worker Removal</a></li> 
	                          <li><a href="seeker_approval.jsp">Seeker Approval</a></li>
	                          <li><a href="seeker_removal.jsp">Seeker Removal</a></li> 
	                          </ul>
	                      </li>
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
				<div class="table100 ver1 m-b-150">
					<% 
					  ArrayList<FeedbackDTO> feedbacks=FeedbackBL.getFeedbacks();
					  if(feedbacks!=null &&(feedbacks.size()>0))
					  {
					  %>
					<table data-vertable="ver1">
						<thead>
							<tr class="row100 head">
								<th class="column100 column1" data-column="column1">ID</th>
								<th class="column100 column2" data-column="column2">DATE</th>
								<th class="column100 column3" data-column="column3">FEEDBACK</th>
								<th class="column100 column4" data-column="column4">ACTION</th>
							</tr>
						</thead>
						<tbody>
						<%for(FeedbackDTO feedback:feedbacks)
					        	  {%>
								<tr>
									<td><%=feedback.getFeedbackId()%></td>
									<td><%=feedback.getFeedbackDate()%></td>
									<td><%=feedback.getFeedback()%></td>
									<td><a href="feedback_delete.jsp?FeedbackId=<%=feedback.getFeedbackId()%>">Delete</a></td>
									
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
 
  </body>
</html>