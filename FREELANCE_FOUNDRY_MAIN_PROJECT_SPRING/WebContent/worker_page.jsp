<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,ff.bl.*,ff.dl.*,ff.dto.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Freelance &mdash;Foundry &mdash;index</title>
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
                <h2 class="mb-0 site-logo"><a href="index.jsp">Freelance<strong class="font-weight-bold">Foundry</strong> </a></h2>
              </div>
              <div class="col-10">
                <nav class="site-navigation text-right" role="navigation">
                  <div class="container">
                    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="seekers_update.jsp">Edit Profile</a></li>
                    <li><a href="seekers_delete.jsp">Delete Profile</a></li>
                    <li><a href="view_all_workers_for_seeker.jsp">View Workers</a></li>
                    <li><a href="feedback_add.jsp">Add Feedback</a></li>
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
    </div>
    <!--  Navigation bar End -->
  



<%!
String worker_id;
WorkerDTO worker=null;


%>
<%
//worker_id="WOR100";
worker_id=request.getParameter("WorkerId");
worker=WorkerBL.getWorker(worker_id);
//out.println(worker_id);
%>



    <br/>
    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-8 mb-5 mb-md-0" data-aos="fade-up" data-aos-delay="100">
            <h2 class="mb-5 h3">Worker Details</h2>
            <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">ID:</span>                    
                    <span class="mb-5 h3"> <%=worker.getWorkerId()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	  <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">Name:</span>                    
                    <span class="mb-5 h3"> <%=worker.getWorkerName()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	  <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">ADDRESS:</span>                    
                    <span class="mb-5 h3"> <%=worker.getWorkerAddress()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	
                 	 <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">GENDER:</span>                    
                    <span class="mb-5 h3"> <%=worker.getGender()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	 <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">AGE:</span>                    
                    <span class="mb-5 h3"> <%=worker.getAge()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	  <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">EXPERIENCE:</span>                    
                    <span class="mb-5 h3"> <%=worker.getExperience()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	  <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">CATEGORY:</span>                    
                    <span class="mb-5 h3"> <%=worker.getWorkCategory()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	  <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">PHONE NUMBER:</span>                    
                    <span class="mb-5 h3"> <%=worker.getWorkerPhone()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	  <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">WAGES:</span>                    
                    <span class="mb-5 h3"> <%=worker.getWages()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	 <div class="rounded border jobs-wrap">
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <div class="d-block d-lg-flex">
                    <div> <span class="mb-5 h5">STATUS:</span>                    
                    <span class="mb-5 h3"> <%=worker.getStatus()%></span></div>
                    </div>
                  </div>
                </div>
                 	 </div>
                 	 </div>
                 	 </div>
                 	 </div>


<br/>
 <br/>            
                 	 
<%!int count=0; %>
<% 

					  ArrayList<FeedbackDTO> feedbacks=FeedbackBL.getWorkerFeedbacks(worker_id);
					  if(feedbacks!=null &&(feedbacks.size()>0))
					  {%>
            
<div class="col-md-4 block-16" data-aos="fade-up" data-aos-delay="200">
            <div class="d-flex mb-0">
              <h2 class="mb-5 h3 mb-0">Feedbacks</h2>
              <div class="ml-auto mt-1"><a href="#" class="owl-custom-prev">Prev</a> / <a href="#" class="owl-custom-next">Next</a></div>
            </div>

            <div class="nonloop-block-16 owl-carousel">
        		<%for(FeedbackDTO feedback:feedbacks)
						        	  {
								%><%!
								String seeker_id;
								SeekerDTO seeker=null;


								%>
								<%
								count++;
								//seeker_id="SKR100";
								seeker_id=feedback.getSeekerId();
								seeker=SeekerBL.getSeeker(seeker_id);

								%> 
              <div class="border rounded p-4 bg-white">
                <h2 class="h5">Feedback <%=count %></h2>
                <p><span class="text-warning">"<%=feedback.getFeedback()%>"</span></p>
                <p>
                  <!--  <span class="d-block"><span class="icon-suitcase"></span> Resto Bar</span>-->
                  <span class="d-block"><b><%=seeker.getSeekerName()%></b></span>
                  <span class="d-block"><%=feedback.getFeedbackDate()%></span>
                </p>
              </div>
<%}
						          }
					  count=0;  %>
						          
       </div>
    </div>
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
            <p>Copyright &copy; <script data-cfasync="false" src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved <!--|   This template is made with <i class="icon-heart text-warning" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>-->
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