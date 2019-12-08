<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dto.*,ff.dl.*,ff.aig.*,java.util.regex.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Worker &mdash;Update &mdash;Success</title>
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
  <%!
		String message="";
		String WorkerId;
		int result;
		WorkerDTO worker=null;

	%>
<%
	WorkerId=(String)session.getAttribute("id");
	worker=WorkerBL.getWorker(WorkerId);
	result=WorkerBL.updateWorker(worker);
%>
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
  
    <div style="height: 113px;"></div>

    <div class="site-blocks-cover overlay" style="background-image: url('template/images/hero_1.jpg');" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12" data-aos="fade">
           
            <%if(session.getAttribute("message")!=null)
                  {
                	  out.println((String)session.getAttribute("message"));
                	  session.removeAttribute("message");
                  }
                  %><br><br><br>
              <form action="update_workers.jsp" class="p-5 bg-white" name="workerregister">
			<div class="form-group row">
                <div class="col-md-6 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="userid">User Id</label>
                  <input type="text" id="fullname" class="form-control" name="WorkerId" value='<%=worker.getWorkerId()%>'  readonly>
                </div>
              
                <div class="col-md-6">
                  <label class="font-weight-bold" for="name">Name</label>
                  <input type="text" id="WorkerName" class="form-control" name="WorkerName" value='<%=worker.getWorkerName()%>' readonly>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-6">
                  <label class="font-weight-bold" for="address">Address</label>
                  <textarea class="form-control" rows="5" id="WorkerAddress" name="WorkerAddress" readonly>
                  <%=worker.getWorkerAddress()%></textarea>
                 
                </div>
              
                <div class="col-md-6">
                  <label class="font-weight-bold" for="gender">Gender</label>
                  <div class="form-check"><br>
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="Gender"  value='<%=worker.getGender()%>'>Male
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label"><br>
					    <input type="radio" class="form-check-input" name="Gender"  value='<%=worker.getGender()%>'>Female
					  </label>
					</div>
                  </div>
              </div>
              <div class="form-group row">
                <div class="col-md-4">
                  <label class="font-weight-bold" for="age">Age</label>
                  <input type="text" id="Age" class="form-control" name="Age" value='<%=worker.getAge()%>' readonly>
                </div>
             
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Category</label>
                  <select class="form-control" name="WorkCategory"><%=worker.getWorkCategory()%>
					  <option value="Carpenter">Carpenter</option>
					  <option value="Plumber">Plumber</option>
					  <option value="Electrician">Electrician</option>
					  <option value="Mason">Mason</option>
				  </select>
                  </div>
              
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Role</label>
                  <input type="text" id="Role" class="form-control" name="Role" value="worker" readonly>
                </div>
                </div>
              <div class="form-group row">
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Experience</label>
                  <input type="text" id="Experience" class="form-control"  name="Experience" value='<%=worker.getExperience()%>' readonly>
                </div>
              
              
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Phone</label>
                  <input type="text" id="WorkerPhone" class="form-control" name="WorkerPhone" value='<%=worker.getWorkerPhone()%>' readonly>
                </div>
              
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Wages</label>
                  <input type="text" id="Wages" class="form-control" name="Wages" value='<%=worker.getWages()%>' readonly>
                </div>
              </div>
              <div class="form-group row">
               <div class="col-md-12">
                  <label class="font-weight-bold" for="email">Status</label>
                  <select class="form-control" name="Status"><option value="Available">Available</option><option value="Engaged">Engaged</option></select>
                </div>
              </div>
           
            </form>
            
          </div>
        </div>
      </div>
    </div>

    <br><br><br><br><br>
    <footer class="site-footer">
      <div class="py-0 quick-contact-info">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div>
              <h2 class="footer-heading mb-4 text-white"><span class="icon-room"></span> Location</h2>
              <p class="mb-0">Spencer jn, Palayam <br>  Kerala <br> India</p>
            </div>
          </div>
          <div class="col-md-4">
            <div>
              <h2 class="footer-heading mb-4 text-white"><span class="icon-clock-o"></span> Service Times</h2>
              <p class="mb-0">Monday to Friday <br>9:00AM - 7:00PM <br>
              Saturday <br>10:00AM - 5:00PM <br>
              Sunday <br>  10:00AM - 3:00PM </p>
            </div>
          </div>
          <div class="col-md-4">
            <h2 class="footer-heading mb-4 text-white"><span class="icon-comments"></span> Get In Touch</h2>
            <p class="mb-0">Email: info@freelancefoundry2019.com <br>
            Phone: (+91) 9908-896-934 </p>
          </div>
        </div>
      </div>
    </div>
        <div class="row pt-1 mt-5 text-center">
          <div class="col-md-12">
            <p>Copyright &copy; <script data-cfasync="false" src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart text-warning" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            </p>
          </div>
          
        </div>
      
    </footer>
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