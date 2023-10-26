<%-- 
    Document   : SignIn
    Created on : 27 Feb, 2023, 10:19:50 PM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
    
       <title>LOGIN</title>
       <style>
           *{
    padding: 0;
    margin: 0;
    font-family: roboto,sans-serif;
}
body{
     background:linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(hp_bg.jpg)no-repeat;
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
.ro{
          width: 350px;
    margin-left: 480px;
}
.col{
       width: 100%;
    margin-top: 50px;
}
.fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas {
        color: white;
    padding: 10px 0px;
   margin-left: 15px;
    position: initial;
}
.h4, h4{
        font-size: 25px;
        margin-left: 10px;
    text-decoration: none;
    color: whitesmoke;
}
 h6{
        color: white;
    font-size: 14px;
    font-weight: 200;
    margin-left: 9px;
}
.box{
    width: 100%;
    margin: 32px 0px;
       border-bottom: 2px solid lightseagreen;
}
.box input {
        margin-top: 7px;
    background: none;
    width: 280px;
    padding: 10px 7px;
    font-size: 17px;
    outline: none;
    color: white;
    border: none;
}
.box i{
    width: 2%;
    text-align: center;
}
.btn1{
    cursor: pointer;
    outline: none;
        margin: 18px 130px;
    padding: 10px 19px;
    border: 3px solid lightseagreen;
    border-radius: 10px;
    font-size: 20px;
    background: none;
    color: whitesmoke;
    font-weight: bold; 
}
.btn1:hover{
    color: white;
    background: black;
    cursor: pointer;
}
.link{
      color: powderblue;
    margin-left: 10px;
    margin-bottom: 12px;
     cursor: pointer;
}
.link:hover{
   color: deepskyblue;
}
a{
    color: powderblue;
     cursor: pointer; 
}
a:hover{
    color: deepskyblue;
}
p{
    color: whitesmoke;
    margin-left: 10px;
}

       </style>
    </head>
    <body>
        <div class="form">
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
            <div class="ro">
                <div class="col">
                    <h1 class="p-3"><i class="fa fa-user"></i></h1>
                        <h4 class="h4">Sign into your account</h4>
                        <form action="Logincode.jsp"> 
                            
                                <div class="box">
                                    <h6>Enter Your Username</h6>
                                    <input type="email" name="txteml" placeholder="Username">
                                </div>
                                 
                                <div class="box">
                                    <h6>Enter Your Password</h6> 
                                    <input type="password" name="txtpass" placeholder="Password">
                                </div>
                                     
                            <div>
                            
                                <input type="submit" value="Login" class="btn1">
                            </div>
                            
                            <a class="link" href="#">Forgot Password ?</a>
                            <p>Don't have an account? <a href="#">Register here</a></p>
                              </form>
                            </div>
                
                          
                         </div>
        </div>
        </div>
             <footer class="text-center text-lg-start" style="background:linear-gradient(45deg, midnightblue, transparent); margin-top: 50px;">
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