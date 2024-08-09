<!DOCTYPE html>
<html lang="en">

<head>
        <meta charset="utf-8">
     <title>Vaishnavi - Online Education System</title>
   
    <!-- Favicon -->
    <link rel="icon" href="img/MAINICON1.jpg">


    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>



    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 px-lg-5">
            <a href="homePage" class="navbar-brand ml-lg-3">
                <h1><img src="img/MAINICON1.jpg" width="80" height="80"> The<font color=red size=90>V</font>aishnaviAcademy</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mx-auto py-0">
                    <a href="homePage" class="nav-item nav-link active">Home</a>
                    <a href="aboutPage" class="nav-item nav-link">About</a>
                    <a href="coursesPage" class="nav-item nav-link">Courses</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu m-0">
                            <a href="coursesDetailsPage" class="dropdown-item">Course Detail</a>
                            <a href="ourFeaturesPage" class="dropdown-item">Our Features</a>
                            <a href="instructorsPage" class="dropdown-item">Instructors</a>
                            <a href="testmonialPage" class="dropdown-item">Testimonial</a>
                        </div>
                    </div>
                    <a href="contactPage" class="nav-item nav-link">Contact</a>
                </div>
                      <a href="backToLogin" class="btn btn-primary py-2 px-4 d-none d-lg-block">LogOut</a>      </div>
        </nav>
    </div>
    <!-- Navbar End -->




    <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-5 mb-5 mb-lg-0">
                    <div class="bg-light d-flex flex-column justify-content-center px-5" style="height: 450px;">
                        <div class="d-flex align-items-center mb-5">
                            <div class="btn-icon bg-primary mr-4">
                                <i class="fa fa-2x fa-map-marker-alt text-white"></i>
                            </div>
                            <div class="mt-n1">
                                <h4>Our Location</h4>
                                <p class="m-0">Rajyog Society, Warje, Pune, Maharashtra 411058</p>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mb-5">
                            <div class="btn-icon bg-secondary mr-4">
                                <i class="fa fa-2x fa-phone-alt text-white"></i>
                            </div>
                            <div class="mt-n1">
                                <h4>Call Us</h4>
                                <p class="m-0">+91-8421029282 <br> +91-8055004632</p>
                            </div>
                        </div>
                        <div class="d-flex align-items-center">
                            <div class="btn-icon bg-warning mr-4">
                                <i class="fa fa-2x fa-envelope text-white"></i>
                            </div>


                            <div class="mt-n1">
                                <h4>Email Us</h4>
                                <p class="m-0">garjevaishnavi454@gmail.com</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="section-title position-relative mb-4">
                        <h6 class="d-inline-block position-relative text-secondary text-uppercase pb-2">Need Help?</h6>
                        <h1 class="display-4">Send Us A Message</h1>
                    </div>
                    
                    
               <font color=red>     <%

if(request.getAttribute("msg")!=null){
	out.print(request.getAttribute("msg"));
}
%></font> 
                    <div class="contact-form">
                        <form action="contact" method="post">
                            <div class="row">
                                <div class="col-6 form-group">
                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0 p-0" name="name" placeholder="Your Name" required="required">
                                </div>
                                <div class="col-6 form-group">
                                    <input type="email" class="form-control border-top-0 border-right-0 border-left-0 p-0" name="email" placeholder="Your Email" required="required">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control border-top-0 border-right-0 border-left-0 p-0" name="mobile" placeholder="Mobile" required="required">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control border-top-0 border-right-0 border-left-0 p-0"  name="message" placeholder="Message" required="required">
                            </div>
                            <div>
                                <button class="btn btn-primary py-3 px-5" type="submit">Send Message</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->




<!-- Footer Start -->
    <div class="container-fluid position-relative overlay-top bg-dark text-white-50 py-5" style="margin-top: 90px;">
        <div class="container mt-5 pt-5">
            <div class="row">
                <div class="col-md-4 mb-5">
                    <h3 class="text-white mb-4">Get In Touch</h3>
                    <p><i class="fa fa-map-marker-alt mr-2"></i>Rajyog Society, Warje, Pune, Maharashtra 411058</p>
                    <p><i class="fa fa-phone-alt mr-2"></i>+91-8421029282/ +91-8055004632</p>
                    <p><i class="fa fa-envelope mr-2"></i>garjevaishnavi454@gmail.com</p>
                    <div class="d-flex justify-content-start mt-4">
                        <a class=" mr-4" href="https://twitter.com/"><i class="fab fa-2x fa-twitter"></i></a>
                        <a class=" mr-4" href="https://www.facebook.com/"><i class="fab fa-2x fa-facebook-f"></i></a>
                        <a class=" mr-4" href="https://www.linkedin.com/in/vaishnavi-garje-636207276/"><i class="fab fa-2x fa-linkedin-in"></i></a>
                        <a  href="https://www.instagram.com/"><i class="fab fa-2x fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <h3 class="text-white mb-4">Our Courses</h3>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-white-50 mb-2" href="coursesPage"><i class="fa fa-angle-right mr-2"></i>Software Design</a>
                        <a class="text-white-50 mb-2" href="coursesPage"><i class="fa fa-angle-right mr-2"></i>Web Design</a>
                        <a class="text-white-50 mb-2" href="coursesPage"><i class="fa fa-angle-right mr-2"></i>Apps Design</a>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <h3 class="text-white mb-4">Department's</h3>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-white-50 mb-2" href="#"/><i class="fa fa-angle-right mr-2"></i>Administration</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Operation</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Trainer</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Placement</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Consellor</a>
                        <a class="text-white-50" href="#"><i class="fa fa-angle-right mr-2"></i>Digital Marketing</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-white-50 border-top py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-left mb-3 mb-md-0">
                   
                </div>
                <div class="col-md-6 text-center text-md-right">
                    <p class="m-0">Designed by <a class="text-white" href="https://www.youtube.com/"> Vaishnavi Garje</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->



    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary rounded-0 btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>