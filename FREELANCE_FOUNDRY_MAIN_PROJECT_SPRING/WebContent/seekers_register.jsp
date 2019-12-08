<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dto.*,ff.dl.*,ff.aig.*,java.util.regex.*,
    java.io.IOException,java.io.PrintWriter,javax.servlet.RequestDispatcher,javax.servlet.ServletException,
    javax.servlet.annotation.WebServlet,javax.servlet.http.Cookie,javax.servlet.http.HttpServlet,
    javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Seeker &mdash;Registration</title>
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
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
  
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
                    <li><a href="contact.html">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                    <li><a href="user_login.jsp">Login</a></li>
                      <li class="has-children">
                        SIGN UP
                        <ul class="dropdown arrow-top">
                          <li><a href="workers_register.jsp">Worker</a></li>
                          <li><a href="seekerForm">Seeker</a></li>
                        </ul>
                      </li>
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
  
					<%
						String SeekerId="";
						SeekerId=AutoIdGenerator.SeekerGenerateId();
					%>
					
    <div style="height: 113px;"></div>

    <div class="site-blocks-cover overlay" style="background-image: url('http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/images/hero_1.jpg');" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12" data-aos="fade">
            <h1>Register for Free!</h1>
             <!--   <form name="form1" action="insert_seekers.jsp" class="p-5 bg-white" onsubmit="return validate()">
			 -->	
			<form:form method="post" class="p-5 bg-white" action="saveSeeker">    
				
              <div class="form-group row">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="userid">User Id</label>
                 <!--   <input type="text" id="SeekerId" class="form-control" readonly="readonly"  name="SeekerId" value='<%=SeekerId%>'>
                	-->
                	<form:input path="seekerId" type="text" id="SeekerId" class="form-control" readonly="readonly" value='<%=SeekerId%>' />
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-6">
                  <label class="font-weight-bold" for="name">Name</label>
                 <!-- <input type="text" class="form-control" name="SeekerName" onblur="validate1()" id="SeekerName" placeholder="Full Name">
                -->	
                <form:input path="seekerName" type="text" class="form-control" onblur="validate1()" id="SeekerName" placeholder="Full Name" />
                <div id="id1"></div>
                </div>
               
              
                <div class="col-md-6">
                  <label class="font-weight-bold" for="address">Address</label>
                 <!-- <textarea class="form-control" rows="5" name="SeekerAddress" onblur="validate1()" id="SeekerAddress" >
                  </textarea>
                 --> 
                 <form:textarea path="seekerAddress" class="form-control" rows="5" onblur="validate1()" id="SeekerAddress" />
                 <div id="id2"></div>
                </div>
                </div>
                <br>
                <div class="form-group row">
              <div class="col-md-6">
                  <label class="font-weight-bold" for="role">Role</label>
                 <!--   <input type="text" class="form-control" name="Role" value="resource seeker" readonly="readonly">
               --> 
               <form:input path="role" type="text" class="form-control" value="resource seeker" readonly="readonly" />
               </div>
                
              	<div class="col-md-6">
                  <label class="font-weight-bold" for="phone">Phone</label>
                 <!--  <input type="text" class="form-control" name="SeekerPhone" onblur="validate1()" id="SeekerPhone"  placeholder="Phone Number">
                 --> 
                 <form:input path="seekerPhone" type="text" class="form-control" onblur="validate1()" id="SeekerPhone"  placeholder="Phone Number" />
                 <div id="id3"></div>
                </div>
                </div>
                <div class="form-group row">
              <div class="col-md-6">
                  <label class="font-weight-bold" for="username">Username</label>
                 <!--   <input type="text" class="form-control" name="Role" value="resource seeker" readonly="readonly">
               --> 
               <form:input path="username" type="text" class="form-control" id="Username"/>
               </div>
                
              	<div class="col-md-6">
                  <label class="font-weight-bold" for="phone">Password</label>
                 <!--  <input type="text" class="form-control" name="SeekerPhone" onblur="validate1()" id="SeekerPhone"  placeholder="Phone Number">
                 --> 
                 <form:input path="password" type="password" class="form-control" id="Password"  placeholder="Phone Number" />
                 </div>
                </div>
                
               
              <div class="form-group row">
                <div class="col-md-12">
                <!--   <input type="hidden" id="admin_approval" class="form-control" name="admin_approval" value="Pending">
               --> 
               <form:hidden path="adminApproval" id="admin_approval" class="form-control" value="Pending" />
               </div></div>
               
               
                
              

              <div class="form-group row">
                
              <div class="col-md-6">
                  
                </div>
              <div class="col-md-6">
                  
                <!--   <input type="submit" value="Register" id="submit" class="btn btn-primary pill px-4 py-2">
                 --> 
                 <input type="submit" value="Register" id="submit" class="btn btn-primary pill px-4 py-2">  
                </div>
                <div class="col-md-6">
                  
                </div>
                </div>
			
				<script type="text/javascript">

            function validate(form1)
            {
                var SeekerName = document.getElementById("SeekerName").value;
                var SeekerAddress = document.getElementById("SeekerAddress").value;
                var SeekerPhone = document.getElementById("SeekerPhone").value;
                var Username = document.getElementById("Username").value;
                var Password = document.getElementById("Password").value;
				var Alphapattern=new RegExp("^[a-zA-Z]");
				var Numberpattern=new RegExp("^[7-9]{1}[0-9]{9}");
				var Userpattern=new RegExp("[A-Z a-z 0-9]{3,15}");
				var Passpattern=new RegExp("(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}");
				var flag=0;
		
				
				  if(!Alphapattern.test(SeekerName))
	                {
	                    document.getElementById("id1").innerHTML="Name field accepts Alphabets only";
	                    document.getElementById("id1").style.color="Red";
	                    if(SeekerName==="")
		                    {
		                        document.getElementById("id1").innerHTML="Don't leave name field empty";
		                        document.getElementById("id1").style.color="Red";
 								flag=1;
		                    }
	                    flag=1;

	                }			
                else
                {
                    document.getElementById("id1").innerHTML="";
                }
                
                if(SeekerAddress==="")
                {
                    document.getElementById("id2").innerHTML="Don't leave Address field empty";
                    document.getElementById("id2").style.color="Red";
                    flag=1;

                }
                else
                {
                    document.getElementById("id2").innerHTML="";
                }
                
                if(!Numberpattern.test(SeekerPhone))
                {
                    document.getElementById("id3").innerHTML="Enter a valid 10 digit mobile number";
                    document.getElementById("id3").style.color="Red";
                    
                if(SeekerPhone==="")
                {
                    document.getElementById("id3").innerHTML="Don't leave Phone field empty";
                    document.getElementById("id3").style.color="Red";
                    flag=1;

                }
                flag=1;

                }
                else
                {
                    document.getElementById("id3").innerHTML="";
                }
                if(!Userpattern.test(Username))
                {
                    document.getElementById("id4").innerHTML="Username field should have a minimum of 3 Alphabets and/or Numbers";
                    document.getElementById("id4").style.color="Red";
  					               
                if(Username==="")
                {
                    document.getElementById("id4").innerHTML="Don't leave Username field empty";
                    document.getElementById("id4").style.color="Red";
                    flag=1;

                }                  
                flag=1;

                }
                else
                {
                    document.getElementById("id4").innerHTML="";
                }
                

				  if(!Passpattern.test(Password))
	                {
	                    document.getElementById("id5").innerHTML="Password should contain 8 characters including one lowercase letter, one uppercase letter, one special character and a number";
	                    document.getElementById("id5").style.color="Red";

                if(Password==="")
                {
                    document.getElementById("id5").innerHTML="Don't leave Password field empty";
                    document.getElementById("id5").style.color="Red";
                    flag=1;

                }  
                flag=1;

                }
                else
                {
                    document.getElementById("id5").innerHTML="";
                }
               if(flag==1)
            	  return false
            	  else
            		  return true
            }
            
            function validate1(form1)
            {
                var SeekerName = document.getElementById("SeekerName").value;
                var SeekerAddress = document.getElementById("SeekerAddress").value;
                var SeekerPhone = document.getElementById("SeekerPhone").value;
                var Username = document.getElementById("Username").value;
                var Password = document.getElementById("Password").value;
				var Alphapattern=new RegExp("^[a-zA-Z]");
				var Numberpattern=new RegExp("^[7-9]{1}[0-9]{9}");
				var Userpattern=new RegExp("[A-Z a-z 0-9]{3,15}");
				var Passpattern=new RegExp("(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}");
				var flag=0;
		
				
				  if(!Alphapattern.test(SeekerName))
	                {
	                    document.getElementById("id1").innerHTML="Name field accepts Alphabets only";
	                    document.getElementById("id1").style.color="Blue";
	                    if(SeekerName==="")
		                    {
		                        document.getElementById("id1").innerHTML="Don't leave name field empty";
		                        document.getElementById("id1").style.color="Blue";
 								return false;
		                    }
	                    return false;

	                }			
                else
                {
                    document.getElementById("id1").innerHTML="";
                }
                
                if(SeekerAddress==="")
                {
                    document.getElementById("id2").innerHTML="Don't leave Address field empty";
                    document.getElementById("id2").style.color="Blue";
                    return false;

                }
                else
                {
                    document.getElementById("id2").innerHTML="";
                }
                
                if(!Numberpattern.test(SeekerPhone))
                {
                    document.getElementById("id3").innerHTML="Enter a valid 10 digit mobile number";
                    document.getElementById("id3").style.color="Blue";
                    
                if(SeekerPhone==="")
                {
                    document.getElementById("id3").innerHTML="Don't leave Phone field empty";
                    document.getElementById("id3").style.color="Blue";
                    return false;

                }
                return false;

                }
                else
                {
                    document.getElementById("id3").innerHTML="";
                }
                if(!Userpattern.test(Username))
                {
                    document.getElementById("id4").innerHTML="Username field should have a minimum of 3 Alphabets and/or Numbers";
                    document.getElementById("id4").style.color="Blue";
  					               
                if(Username==="")
                {
                    document.getElementById("id4").innerHTML="Don't leave Username field empty";
                    document.getElementById("id4").style.color="Blue";
                    return false;

                }                  
                return false;

                }
                else
                {
                    document.getElementById("id4").innerHTML="";
                }
                

				  if(!Passpattern.test(Password))
	                {
	                    document.getElementById("id5").innerHTML="Password should contain 8 characters including one lowercase letter, one uppercase letter, one special character and a number";
	                    document.getElementById("id5").style.color="Blue";

                if(Password==="")
                {
                    document.getElementById("id5").innerHTML="Don't leave Password field empty";
                    document.getElementById("id5").style.color="Blue";
                    return false;

                }  
                return false;

                }
                else
                {
                    document.getElementById("id5").innerHTML="";
                }
             
            		  return true
            }
   
        </script>
        </form:form> 
            <!--</form>-->
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