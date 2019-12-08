<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            <h1>Welcome to Freelance Foundry</h1>
              <form action="view_workers_by_category_index.jsp" method="POST">
              <div class="row mb-3">
                <div class="col-md-9">
                  <div class="row">
                    <div class="col-md-6 mb-3 mb-md-0">
                      
						<select class="form-control" name="SelectWorkerCategory" id="SelectWorkerCategory">
							  <option value="Search Workers by Category">Search Workers by Category</option>
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
						</select></div>
                    <div class="col-md-3">
                    <input type="submit" class="btn btn-search btn-primary btn-block" value="Search">
                   </div>
                  </div>
                 </div>
                </div>
              </form>
            
          </div>
        </div>
      </div>
    </div>
    



    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-8 mb-5 mb-md-0" data-aos="fade-up" data-aos-delay="100">
            <h2 class="mb-5 h3">Recent Jobs</h2>
            <div class="rounded border jobs-wrap">

              <div class="company-logo blank-logo text-center text-md-left pl-3">
                  <div class="mr-3">
                   <span class="icon-suitcase mr-1"></span>
                  </div>
                </div>
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <h3>Painter</h3>
                    <div class="d-block d-lg-flex">
                    <div><span class="icon-money mr-1"></span> 100 INR/hr &mdash; 200 INR/hr</div>
                    </div>
                  </div>
                </div>
               
              

              <div class="company-logo blank-logo text-center text-md-left pl-3">
                   <div class="mr-3"><span class="icon-suitcase mr-1"></span></div>
                </div>
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <h3>Driver</h3>
                    <div class="d-block d-lg-flex"><div><span class="icon-money mr-1"></span> 100 INR/hr &mdash; 200 INR/hr</div>
                    </div>
                  </div>
                </div>
                
             


              <div class="company-logo blank-logo text-center text-md-left pl-3">
                   <div class="mr-3"><span class="icon-suitcase mr-1"></span></div>
                </div>
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <h3>Carpenter</h3>
                    <div class="d-block d-lg-flex"><div><span class="icon-money mr-1"></span> 100 INR/hr &mdash; 200 INR/hr</div>
                    </div>
                  </div>
                </div>
               
              


              <div class="company-logo blank-logo text-center text-md-left pl-3">
                   <div class="mr-3"><span class="icon-suitcase mr-1"></span></div>
                </div>
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <h3>Sweeper</h3>
                    <div class="d-block d-lg-flex"><div><span class="icon-money mr-1"></span> 100 INR/hr &mdash; 200 INR/hr</div>
                    </div>
                  </div>
                </div>
               
              

              <div class="company-logo blank-logo text-center text-md-left pl-3">
                  <div class="mr-3"><span class="icon-suitcase mr-1"></span></div>
                </div>
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <h3>Gardener</h3>
                    <div class="d-block d-lg-flex">
                    <div><span class="icon-money mr-1"></span> 100 INR/hr &mdash; 200 INR/hr</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>   
              


            
          <div class="col-md-4 block-16" data-aos="fade-up" data-aos-delay="200">
            <div class="d-flex mb-0">
              <h2 class="mb-5 h3 mb-0">Featured Jobs</h2>
              <div class="ml-auto mt-1"><a href="#" class="owl-custom-prev">Prev</a> / <a href="#" class="owl-custom-next">Next</a></div>
            </div>

            <div class="nonloop-block-16 owl-carousel">

              <div class="border rounded p-4 bg-white">
                <h2 class="h5">Driver</h2>
                <p><span class="border border-warning rounded p-1 px-2 text-warning">Freelance</span></p>
                <p>
                  <!--  <span class="d-block"><span class="icon-suitcase"></span> Resto Bar</span>-->
                  <span class="d-block"><span class="icon-room"></span> Thampanoor,Trivandrum</span>
                  <span class="d-block"><span class="icon-money mr-1"></span> 100 INR/hr &mdash; 300 INR/hr</span>
                </p>
                <p class="mb-0">Driver Vacancies are available in Thampanoor city.Search for workers by driver category.</p>
              </div>

              <div class="border rounded p-4 bg-white">
                <h2 class="h5">Carpenter</h2>
                <p><span class="border border-warning rounded p-1 px-2 text-warning">Freelance</span></p>
                <p>
                  <!--  <span class="d-block"><span class="icon-suitcase"></span> Resto Bar</span>-->
                  <span class="d-block"><span class="icon-room"></span> Palayam,Trivandrum</span>
                  <span class="d-block"><span class="icon-money mr-1"></span> 100 INR/hr &mdash; 300 INR/hr</span>
                </p>
                <p class="mb-0">Carpenter Vacancies are available in Palayam city.Search for workers by Carpenter category.</p>
              </div>

              <div class="border rounded p-4 bg-white">
                <h2 class="h5">House Cleaning</h2>
                <p><span class="border border-warning rounded p-1 px-2 text-warning">Freelance</span></p>
                <p>
                  <!--  <span class="d-block"><span class="icon-suitcase"></span> Resto Bar</span>-->
                  <span class="d-block"><span class="icon-room"></span> Kazhakkoottam,Trivandrum</span>
                  <span class="d-block"><span class="icon-money mr-1"></span> 100 INR/hr &mdash; 300 INR/hr</span>
                </p>
                <p class="mb-0">House cleaning Vacancies are available in Kazhakkoottam.Search for workers by House Cleaning category.</p>
              </div>

              <div class="border rounded p-4 bg-white">
                <h2 class="h5">Laundry Service</h2>
                <p><span class="border border-warning rounded p-1 px-2 text-warning">Freelance</span></p>
                <p>
                  <!--  <span class="d-block"><span class="icon-suitcase"></span> Resto Bar</span>-->
                  <span class="d-block"><span class="icon-room"></span> Kazhakkottam,Trivandrum</span>
                  <span class="d-block"><span class="icon-money mr-1"></span> 100 INR/hr &mdash; 300 INR/hr</span>
                </p>
                <p class="mb-0">Laundry Services are available in Kazhakkottam.Search for workers by Laundry category.</p>
              </div>

            </div>

          </div>
        </div>
      </div>
    </div>

    <div class="site-section" data-aos="fade">
      <div class="container">
        <div class="row align-items-center">
        <div class="col-md-6 mb-5 mb-md-0">
            <div class="text-left mb-5 section-heading">
              <h2>Feedbacks</h2>
            </div>

            <p class="mb-4 h5 font-italic lineheight1-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque, nisi Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nobis magni eaque velit eum, id rem eveniet dolor possimus voluptas..&rdquo;</p>
            <p>&mdash; <strong class="text-black font-weight-bold">John Holmes</strong>, Marketing Strategist</p>
            </div>
          <div class="col-md-5 ml-auto">
            <div class="text-left mb-5 section-heading">
              
            </div>

            <p class="mb-4 h5 font-italic lineheight1-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque, nisi Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nobis magni eaque velit eum, id rem eveniet dolor possimus voluptas..&rdquo;</p>
            <p>&mdash; <strong class="text-black font-weight-bold">John Holmes</strong>, Marketing Strategist</p>
            
          </div>
        </div>
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