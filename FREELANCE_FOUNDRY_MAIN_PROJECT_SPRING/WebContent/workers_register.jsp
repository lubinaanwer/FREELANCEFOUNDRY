<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ff.bl.*,ff.dto.*,ff.dl.*,ff.aig.*,java.util.regex.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Worker &mdash;Registration</title>
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
  
    <div style="height: 113px;"></div>

    <div class="site-blocks-cover overlay" style="background-image: url('http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/images/hero_1.jpg');" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12" data-aos="fade">
            <h1>Register for Free!</h1>
              <form action="insert_workers.jsp" class="p-5 bg-white" name="form1" onsubmit="return validate()">
				
<%
	String WorkerId="";
	WorkerId=AutoIdGenerator.GenerateId();
	//session.setAttribute("WorkerID", WorkerId);

%>
				 
              <div class="form-group row">
                <div class="col-md-6 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="userid">User Id</label>
                  <input type="text" id="UserId" readonly class="form-control" name="WorkerId" value='<%=WorkerId%>'>
                </div>
              
                <div class="col-md-6">
                  <label class="font-weight-bold" for="fullname">Name</label>
                  <input type="text" class="form-control" name="WorkerName" id="WorkerName" onblur="validate1()"  placeholder="Full Name">
                  <div id="id1"></div>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-6">
                  <label class="font-weight-bold" for="address">Address</label>
                  <textarea class="form-control" name="WorkerAddress" rows="5" id="WorkerAddress"  onblur="validate1()">
                  </textarea>
                 <div id="id2"></div>
                </div>
              
                <div class="col-md-6">
                  <label class="font-weight-bold" for="gender">Gender</label>
                  <div class="form-check"><br>
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="Gender" id="gender_male" value="male" onblur="validate1()">Male
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label"><br>
					    <input type="radio" class="form-check-input" name="Gender"id="gender_female" value="female" onblur="validate1()">Female
					  </label>
					</div>
					<div id="id3"></div>
                  </div>
              </div>
              <div class="form-group row">
                <div class="col-md-4">
                  <label class="font-weight-bold" for="age">Age</label>
                  <input type="text" id="Age" class="form-control" name="Age" id="Age"  onblur="validate1()" placeholder="Current Age">
                  <div id="id4"></div>
                </div>
             
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Category</label>
                  <select class="form-control" name="WorkCategory">
					  <option value="Carpenter">Carpenter</option>
							  <option value="Plumber">Plumber</option>
							  <option value="Electrician">Electrician</option>
							  <option value="Gardener">Gardener</option>
							  <option value="Mason">Mason</option>
							  <option value="Painter">Painter</option>
							  <option value="Sweeper">Sweeper</option>
							  <option value="Laundry">Laundry</option>
							  <option value="Tailor">Tailor</option>
							  <option value="Presser">Presser</option>
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
                  <input type="text" class="form-control"  name="Experience" id="Experience"  onblur="validate1()" placeholder="Experience(Per year)">
                  <div id="id5"></div>
                </div>
              
              
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Phone</label>
                  <input type="text" class="form-control" name="WorkerPhone" id="WorkerPhone"  onblur="validate1()" placeholder="Phone Number">
                  <div id="id6"></div>
                </div>
              
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Wages</label>
                  <input type="text" class="form-control" name="Wages" id="Wages"  onblur="validate1()" placeholder="Wages(Per Hour)">
                  <div id="id7"></div>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Username</label>
                  <input type="text" class="form-control" name="Username" id="Username"  onblur="validate1()" placeholder="Username">
                  <div id="id8"></div>
                </div>
              
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Password</label>
                  <input type="Password" class="form-control" name="Password" id="Password"  onblur="validate1()" placeholder="Password">
                  <div id="id9"></div>
                </div>
              
                <div class="col-md-4">
                  <label class="font-weight-bold" for="email">Status</label>
                  <select class="form-control" name="Status"><option value="Available">Available</option><option value="Engaged">Engaged</option></select>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-12">
                  <input type="hidden" id="admin_approval" class="form-control" name="admin_approval" value="Pending">
                </div>
               </div>
                <div class="form-group row">
                <div class="col-md-4">
                  
                </div>
              
              <div class="col-md-4">
                  
                  <input type="submit" value="Register" class="btn btn-primary pill px-4 py-2">
                  
                </div>
                <div class="col-md-4">
                  
                </div>
                </div>

					<script type="text/javascript">
function validate(form1)
{
    var WorkerName = document.getElementById("WorkerName").value;
    var WorkerAddress = document.getElementById("WorkerAddress").value;
    var Age = document.getElementById("Age").value;
    var Experience = document.getElementById("Experience").value;
    var WorkerPhone = document.getElementById("WorkerPhone").value;
    var Wages = document.getElementById("Wages").value;
    var Username = document.getElementById("Username").value;
    var Password = document.getElementById("Password").value;
	var Alphapattern=new RegExp("^[a-zA-Z]");
	var AgePattern1=new RegExp("^([1][8-9]|[2-5][0-9]|[6][0-5])$");
	var AgePattern2=new RegExp("[0-9]{1,3}");
	var ExperiencePattern=new RegExp("[0-9]{1,2}");
	var Mobilepattern1=new RegExp("^[7-9]{1}[0-9]{9}");
	var Mobilepattern2=new RegExp("[0-9]");
	var Wagespattern=new RegExp("[0-9]");
	var Userpattern=new RegExp("[A-Z a-z 0-9]{3,15}");
	var Passpattern=new RegExp("(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}");
	var flag=0;

	
	  if(!Alphapattern.test(WorkerName))
        {
            document.getElementById("id1").innerHTML="*Name field accepts Alphabets only";
            document.getElementById("id1").style.color="Red";
            if(WorkerName==="")
                {
                    document.getElementById("id1").innerHTML="*Don't leave name field empty";
                    document.getElementById("id1").style.color="Red";
						flag=1;
                }
            flag=1;

        }			
    else
    {
        document.getElementById("id1").innerHTML="";
    }
    
    if(WorkerAddress==="")
    {
        document.getElementById("id2").innerHTML="*Don't leave Address field empty";
        document.getElementById("id2").style.color="Red";
        flag=1;

    }
    else
    {
        document.getElementById("id2").innerHTML="";
    }
    if(document.getElementById("gender_male").checked || document.getElementById("gender_female").checked)
	{
    document.getElementById("id3").innerHTML="";

	
	}

else
{
	document.getElementById("id3").innerHTML="*Select Gender";
    document.getElementById("id3").style.color="Red";
    flag=1;
}
    if(!AgePattern1.test(Age))
    {
        document.getElementById("id4").innerHTML="*Enter a valid age";
        document.getElementById("id4").style.color="Red";
    if(!AgePattern2.test(Age))
    {
        document.getElementById("id4").innerHTML="*Age field accepts numbers only";
        document.getElementById("id4").style.color="Red";
        if(Age=="")
            {
                document.getElementById("id4").innerHTML="*Don't leave age field empty";
                document.getElementById("id4").style.color="Red";
					flag=1;
            }
        flag=1;
    }
    flag=1;

    }			
else
{
    document.getElementById("id4").innerHTML="";
}
    if(!ExperiencePattern.test(Experience))
    {
        document.getElementById("id5").innerHTML="*Experience field accepts numbers only";
        document.getElementById("id5").style.color="Red";
        if(Experience==="")
            {
                document.getElementById("id5").innerHTML="*Don't leave Experience field empty";
                document.getElementById("id5").style.color="Red";
					flag=1;
            }
        flag=1;
   

    }			
else
{
    document.getElementById("id5").innerHTML="";
}
    if(!Mobilepattern1.test(WorkerPhone))
    {
        document.getElementById("id6").innerHTML="*Enter a valid 10 digit mobile number";
        document.getElementById("id6").style.color="Red";
        if(!Mobilepattern2.test(WorkerPhone))
        {
            document.getElementById("id6").innerHTML="*Phone number field accept numbers only";
            document.getElementById("id6").style.color="Red";
    if(WorkerPhone=="")
    {
        document.getElementById("id6").innerHTML="*Don't leave Phone field empty";
        document.getElementById("id6").style.color="Red";
        flag=1;
    }
    flag=1;
    }
    flag=1;

    }
    else
    {
        document.getElementById("id6").innerHTML="";
    }
    if(!Wagespattern.test(Wages))
    {
        document.getElementById("id7").innerHTML="*Wages field accepts numbers only";
        document.getElementById("id7").style.color="Red";
        if(Wages==="")
            {
                document.getElementById("id7").innerHTML="*Don't leave Wages field empty";
                document.getElementById("id7").style.color="Red";
					flag=1;
            }
        flag=1;
   

    }			
else
{
    document.getElementById("id7").innerHTML="";
}
    if(!Userpattern.test(Username))
    {
        document.getElementById("id8").innerHTML="*Username field accepts Alphabets and Numbers only";
        document.getElementById("id8").style.color="Red";
			               
    if(Username==="")
    {
        document.getElementById("id8").innerHTML="*Don't leave Username field empty";
        document.getElementById("id8").style.color="Red";
        flag=1;

    }                  
    flag=1;

    }
    else
    {
        document.getElementById("id8").innerHTML="";
    }
    

	  if(!Passpattern.test(Password))
        {
            document.getElementById("id9").innerHTML="*Password should contain 8 characters including one lowercase letter, one uppercase letter, one special character and a number";
            document.getElementById("id9").style.color="Red";

    if(Password==="")
    {
        document.getElementById("id9").innerHTML="*Don't leave Password field empty";
        document.getElementById("id9").style.color="Red";
        flag=1;

    }  
    flag=1;

    }
    else
    {
        document.getElementById("id9").innerHTML="";
    }
	
  if(flag==1)
	  return false;
	  else
		  return true;
}
 function validate1(form1)
            {
                var WorkerName = document.getElementById("WorkerName").value;
                var WorkerAddress = document.getElementById("WorkerAddress").value;
                var Age = document.getElementById("Age").value;
                var Experience = document.getElementById("Experience").value;
                var WorkerPhone = document.getElementById("WorkerPhone").value;
                var Wages = document.getElementById("Wages").value;
                var Username = document.getElementById("Username").value;
                var Password = document.getElementById("Password").value;
				var Alphapattern=new RegExp("^[a-zA-Z]");
				var AgePattern1=new RegExp("^([1][8-9]|[2-5][0-9]|[6][0-5])$");
				var AgePattern2=new RegExp("[0-9]{1,3}");
				var ExperiencePattern=new RegExp("[0-9]{1,2}");
				var Mobilepattern1=new RegExp("^[7-9]{1}[0-9]{9}");
				var Mobilepattern2=new RegExp("[0-9]");
				var Wagespattern=new RegExp("[0-9]");
				var Userpattern=new RegExp("[A-Z a-z 0-9]{3,15}");
				var Passpattern=new RegExp("(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}");
				var flag=0;
		
				
				  if(!Alphapattern.test(WorkerName))
	                {
	                    document.getElementById("id1").innerHTML="*Name field accepts Alphabets only";
	                    document.getElementById("id1").style.color="Green";
	                    if(WorkerName==="")
		                    {
		                        document.getElementById("id1").innerHTML="*Don't leave name field empty";
		                        document.getElementById("id1").style.color="Green";
		                        return false;
		                    }
	                    return false;

	                }			
                else
                {
                    document.getElementById("id1").innerHTML="";
                }
                
                if(WorkerAddress==="")
                {
                    document.getElementById("id2").innerHTML="*Don't leave Address field empty";
                    document.getElementById("id2").style.color="Green";
                    return false;

                }
                else
                {
                    document.getElementById("id2").innerHTML="";
                }
                if(document.getElementById("gender_male").checked || document.getElementById("gender_female").checked)
				{
                document.getElementById("id3").innerHTML="";

				
				}

            else
            {
            	document.getElementById("id3").innerHTML="*Select Gender";
                document.getElementById("id3").style.color="Green";
                return false;
            }
                if(!AgePattern1.test(Age))
                {
                    document.getElementById("id4").innerHTML="*Enter a valid age";
                    document.getElementById("id4").style.color="Green";
                if(!AgePattern2.test(Age))
                {
                    document.getElementById("id4").innerHTML="*Age field accepts numbers only";
                    document.getElementById("id4").style.color="Green";
                    if(Age=="")
	                    {
	                        document.getElementById("id4").innerHTML="*Don't leave age field empty";
	                        document.getElementById("id4").style.color="Green";
	                        return false;
	                    }
                    return false;
                }
                return false;

                }			
            else
            {
                document.getElementById("id4").innerHTML="";
            }
                if(!ExperiencePattern.test(Experience))
                {
                    document.getElementById("id5").innerHTML="*Experience field accepts numbers only";
                    document.getElementById("id5").style.color="Green";
                    if(Experience==="")
	                    {
	                        document.getElementById("id5").innerHTML="*Don't leave Experience field empty";
	                        document.getElementById("id5").style.color="Green";
	                        return false;
	                    }
                    return false;
               

                }			
            else
            {
                document.getElementById("id5").innerHTML="";
            }
                if(!Mobilepattern1.test(WorkerPhone))
                {
                    document.getElementById("id6").innerHTML="*Enter a valid 10 digit mobile number";
                    document.getElementById("id6").style.color="Green";
                    if(!Mobilepattern2.test(WorkerPhone))
                    {
                        document.getElementById("id6").innerHTML="*Phone number field accept numbers only";
                        document.getElementById("id6").style.color="Green";
                if(WorkerPhone=="")
                {
                    document.getElementById("id6").innerHTML="*Don't leave Phone field empty";
                    document.getElementById("id6").style.color="Green";
                    return false;
                }
                return false;
                }
                    return false;

                }
                else
                {
                    document.getElementById("id6").innerHTML="";
                }
                if(!Wagespattern.test(Wages))
                {
                    document.getElementById("id7").innerHTML="*Wages field accepts numbers only";
                    document.getElementById("id7").style.color="Green";
                    if(Wages==="")
	                    {
	                        document.getElementById("id7").innerHTML="*Don't leave Wages field empty";
	                        document.getElementById("id7").style.color="Green";
	                        return false;
	                    }
                    return false;               

                }			
            else
            {
                document.getElementById("id7").innerHTML="";
            }
                if(!Userpattern.test(Username))
                {
                    document.getElementById("id8").innerHTML="*Username field accepts Alphabets and Numbers only";
                    document.getElementById("id8").style.color="Green";
  					               
                if(Username==="")
                {
                    document.getElementById("id8").innerHTML="*Don't leave Username field empty";
                    document.getElementById("id8").style.color="Green";
                    return false;
                }                  
                return false;
                }
                else
                {
                    document.getElementById("id8").innerHTML="";
                }
                

				  if(!Passpattern.test(Password))
	                {
	                    document.getElementById("id9").innerHTML="*Password should contain 8 characters including one lowercase letter, one uppercase letter, one special character and a number";
	                    document.getElementById("id9").style.color="Green";

                if(Password==="")
                {
                    document.getElementById("id9").innerHTML="*Don't leave Password field empty";
                    document.getElementById("id9").style.color="Green";
                    return false;
                }  
                return false;
                }
                else
                {
                    document.getElementById("id9").innerHTML="";
                }
				
            	  
            		  return true;
            }
   
</script>
  
            </form>
            
          </div>
        </div>
      </div>
    </div>
    


    <br><br><br><br><br><br><br><br><br><br>
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
            <p>Copyright &copy; <script data-cfasync="false" src="http://localhost:8085/FREELANCE_FOUNDRY_MAIN_PROJECT/template/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved <!--  | This template is made with <i class="icon-heart text-warning" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>-->
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