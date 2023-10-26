<%-- 
    Document   : AdminHome
    Created on : 10 Apr, 2023, 2:50:08 PM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <title>Home</title>
        <style>
              *{
                margin: 0;
                padding: 0;
            }
            body{
                background:linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(hp_bg.jpg)no-repeat;
                background-size:cover;
                height: 90vh;
                background-position: center;
                background-color: darkblue;
            }
             .logo{
                width: 120px;
                cursor: pointer;
                color: white;
            }
            .a{
                   text-decoration: none;
    color: honeydew;
    border: 1px solid lavenderblush;
    padding: 3px 9px;
    border-radius: 15px;
            }
            .a:hover{
                cursor: pointer;
                background: black;
                opacity: 0.9;
                color: white;
            }
             .fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas{
                 padding-right: 10px;
                color: white;
            }
            .col-md-4{
                    width: 1000px;
            }
            .me-2{
                       border: 2px solid black;
    background: white;
    width: 500px;
    color: white;
            }
            .d-flex{
                    margin-left: 350px;
            }
            .btn-info{
    text-align: center;
    font-size: large;
    font-style: italic;
    border: 2px solid black;
            }
            .w-100{
                    width: 3000px;
                    height: 600px;
                    margin-top: 30px;
                    
            }
            .row{
                    margin: 70px;
                    margin-top: 30px;
            }
            .img-fluid0{
             background:linear-gradient(170deg, #527abf, transparent);
             width: 228px;
             height: 225px;
             border: 2px solid lightskyblue;
                 margin-right: 100px;
    margin-left: 115px;
            }
            .img-fluid1{
                background: linear-gradient(170deg, #FF7043, transparent);
             width: 228px;
             height: 225px;
             border: 2px solid lightsalmon;
                 margin-right: 100px;
            }
            .img-fluid2{
              background: linear-gradient(170deg, #566266, transparent);
             width: 228px;
             height: 225px;
             border: 2px solid lightgrey;
            }
            .img-fluid4{
             background: linear-gradient(170deg, lightpink, transparent);
             width: 228px;
             height: 225px;
             border: 2px solid lightpink;
             margin-right: 100px;
    margin-left: 275px;
    margin-top: 20px;
            }
            .img-fluid3{
             background: linear-gradient(170deg, cadetblue, transparent);
             width: 228px;
             height: 225px;
             border: 2px solid lightcyan;
              margin-top: 20px;
            }
            p{
                color: white;
                font-size: 19px;
                font-family: auto;
                margin-top: 10px;
                text-align: center;
            }
            h5{
               font-size: 50px;
               margin-bottom: 50px;
               margin-right: 420px;
               font-family: alkatra;
            }
            .para{
               margin-bottom: 200px;
               margin-right: 420px;  
            }
            .image0{
              height: 200px;
                width: 200px;
                margin-top: 11px;
            }
            .image1{
                height: 200px;
                margin-top: 11px;
            }
            .image2{
                height: 200px;
                width: 200px;
                margin-top: 11px;
            }
            .image3{
                height: 200px;
                width: 200px;
                margin-top: 11px;
            }
            .image4{
                height: 200px;
                width: 200px;
                margin-top: 11px;
            }
        </style>
    </head>
    <body>
        <div class="container">
        <nav class="navbar">
  <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="tb.png" class="logo"></a>
      
         <a class="a" href="#">Logout</a>
  
  </div>
</nav>
 
           
                        
            <marquee style="font-family:alkatra;color: lavenderblush;font-size: 40px;"><b>WELCOME TO TRAVEL BLISS</b></marquee>
            <div class="row">
                <div class="col-md-6 img-fluid0" >
                <img src="cust.jpg" class="image0">
                <p>MANAGE CUSTOMER</p>
            </div>
                
            <div class="col-md-6 img-fluid1" >
                <img src="flight.jpg" class="image1">
                <p>MANAGE FLIGHT</p>
            </div>
            
               <div class="col-md-6 img-fluid2">
                <img src="train2.jpg" class="image2">
                <p>MANAGE TRAIN</p>
            </div>
     
            </div>
            
            <div class="row">
               <div class="col-md-6 img-fluid4">
                <img src="hotel2.jpg" class="image4">
                <p>MANAGE HOTEL</p>
            </div>
                
             <div class="col-md-6 img-fluid3">
                <img src="pack.jpg" class="image3">
                <p>MANAGE PACKAGES</p>
            </div>
              
            </div>
        </div>
            
        <footer class="bg-dark text-center text-lg-start" style="background:linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1));" >
  <!-- Grid container -->
  <div class="container p-4">
    <!--Grid row-->
    <div class="row" >
      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0" >
        

        <ul class="list-unstyled mb-0">
          <li>
              <a href="#!" class="text-light" style="text-decoration:none;">Manage Airline</a>
          </li>
          <li>
            <a href="#!" class="text-light" style="text-decoration:none;">Add Flight</a>
          </li>
         
        </ul>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        

        <ul class="list-unstyled">
          <li>
            <a href="#!" class="text-light" style="text-decoration:none;">Manage Train</a>
          </li>
          <li>
            <a href="#!" class="text-light" style="text-decoration:none;">Add Train</a>
          </li>
         
        </ul>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        

        <ul class="list-unstyled mb-0">
          <li>
            <a href="#!" class="text-light" style="text-decoration:none;">Manage Hotel</a>
          </li>
          <li>
            <a href="#!" class="text-light" style="text-decoration:none;">Add Hotel</a>
          </li>
         
        </ul>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0" >
        

        <ul class="list-unstyled">
          <li>
            <a href="#!" class="text-light" style="text-decoration:none;">Manage Package</a>
          </li>
          <li>
            <a href="#!" class="text-light" style="text-decoration:none;">Add Package</a>
          </li>
         
        </ul>
      </div>
      <!--Grid column-->
    </div>
    <!--Grid row-->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2); color: white;">
    © 2020 Copyright:
    <a class="text-light" href="https://travelbliss.com/">TravelBliss.com</a>
  </div>
  <!-- Copyright -->
</footer>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
