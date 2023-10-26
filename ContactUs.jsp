<%-- 
    Document   : ContactUs
    Created on : 27 Feb, 2023, 10:11:10 PM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <title>ContactUs</title>
        
        <style>
             *{
                margin: 0;
                padding: 0;
            }
            body{
                background:linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url(hp_bg.jpg)no-repeat;
                background-size:cover;
                height: 100vh;
                background-position: center;
            }
   .logo{
    width: 120px;
    cursor: pointer;
    color: white;
}
.navbar{
     height: 12%;
    display: flex;
    align-items: center;
}
nav{
    flex:1;
    text-align: right;
}
nav ul li{
    list-style: none;
    display: inline-block;
    margin-left: 60px; 
}
nav ul li a{
    text-decoration: none;
    color: white;
    font-size: 15px;
} 
            h5{
                color: white;
                text-align: center;
            }
            h3{
                color: white;
                text-align: center;
                margin-bottom: 20px;
            }
             h2{
                color: white;
                text-align: center;
                margin-bottom: 20px;
                margin-top: 20px;
            }
            .fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas{
                color: white;
                text-align: center;
                margin-left: 195px;
                font-size: 30px;
            }
            p{
               color: ghostwhite;
               text-align: center;
               font-size: 15px;
            }
            .col-lg-6{
                margin-top: 50px;
            }
            hr{
                border: 2px solid whitesmoke;
            }
            button, input, optgroup, select, textarea{
                background: none;
                border: 2px solid white;
                padding: 6px 6px;
                color: white;
                margin-bottom: 12px;
                width: 300px;
            }
            .box{
                margin-left: 100px;
            }
            .btn-warning{
                width: 300px;
                margin-left: 101px;
            }
        </style>
        
    </head>
    <body>
        <div class="container">
  <div class="navbar">
                <span style="width: 120px; cursor: pointer"><img src="tb.png" class="logo"></span>
                <nav>
                    <ul>
                        <li><a href="HomePage.jsp" class="a1">Home</a></li>
                        <li><a href="Login.jsp" class="a1">Login</a></li>
                        <li><a href="CustomerRegistration.jsp" class="a1">Registration</a></li>
                        <li><a href="ContactUs.jsp" class="a1">ContactUs</a></li>
                        <li><a href="AboutUs.jsp" class="a1">AboutUs</a></li>
                    </ul>
                </nav>
            </div>
            <hr>
          <div class="row">
              <div>
                  <h2>GET IN TOUCH</h2>
              </div>
              
                <div class="col">
                    <i class="fa fa-address-card"></i>
                    <h5>ADDRESS</h5>
                  <p> D-4, Ramgarh, Jahangirpuri, Near GTK Depot, Opposite Metro Pillar No. 142, New Delhi, Delhi 110033</p>
                </div>
              
              <div class="col">
                  <i class="fa fa-phone-square"></i>
                   <h5>PHONE</h5>
                  <p>202-555-0156</p>
                   <p>202-555-0150</p>
              </div>
              
              <div class="col">
                   <i class="fa fa-envelope"></i>
                  <h5>EMAIL</h5>
                  <p>travelbliss007@gmail.com</p>
              </div>
                   
                    
                </div>
            <hr>
            <div class="row">
              
                <div class="col-lg-6">
                  
                    <h3>MESSAGE US</h3>
                    <p>If you have any questions or need help, please fill out the form.</p>
                    <p> We do our best to respond within 1 business day.</p>
                </div>
              
              <div class="col-lg-6">
                  
                    <form> 
                            
                                <div class="box">
                                    <input type="text" id="txtnm" placeholder="Name">
                                </div>
                                 
                                    
                                <div class="box">
                                    <input type="email" id="txteml" placeholder="Enter your email">
                                </div>
                                 
                                <div class="box">
                                    <textarea type="message" id="txtmsg" placeholder="Message"></textarea>
                                </div>
                                     
                            <div>
                            
                                    <button type="button" class="btn btn-warning">Submit</button>
                            </div>
                         
                              </form>
              </div>
                </div>
            
              </div>
           <footer class="text-center text-lg-start" style="background:linear-gradient(45deg, midnightblue, transparent); margin-top: 40px;">
  <!-- Grid container -->
  <div class="container p-4">
    <!--Grid row-->
    <div class="row">
      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        

        <ul class="list-unstyled">
          <li>
            <a href="#!" class="text-light">Flights</a>
          </li>
          <li>
            <a href="#!" class="text-light">Hotels</a>
          </li>
        
        </ul>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        

        <ul class="list-unstyled">
          <li>
            <a href="#!" class="text-light">Trains</a>
          </li>
          <li>
            <a href="#!" class="text-light">Holidays</a>
          </li>
     
        </ul>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
       

        <ul class="list-unstyled mb-0">
          <li>
            <a href="#!" class="text-light">Flight Status</a>
          </li>
          <li>
            <a href="#!" class="text-light">Feedback</a>
          </li>
         
        </ul>
      </div>
      
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0 text-light">
    © 2020 Copyright:
    <a class="text-light" href="https://TravelBliss.com/">TravelBliss.com</a>
  </div>

      <!--Grid column-->
    </div>


    <!--Grid row-->
  </div>
  <!-- Grid container -->

</footer>
          
        
        
        
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
