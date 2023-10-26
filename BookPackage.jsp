<%-- 
    Document   : BookPackage
    Created on : 18 Mar, 2023, 11:16:15 PM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <title>Package Booking</title>
    </head>
    <body>
         <style>
             *{
                margin: 0;
                padding: 0;
            }
           body{
               background:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(package.jpg)no-repeat;
              background-size:cover;
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
            .fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas{
                margin-right: 10px;
            }
            #form{
                background-color: black;
                height: 530px;
                width: 700px;
                margin: auto;
                padding: 20px;
                opacity: 0.8;
            }
            #form h3{
                border-bottom: 2px solid aquamarine;
                width: 320px;
                padding: 5px;
            }
            ::placeholder{
                color: white;
            }
            #input #input-group{
                width: 300px;
                margin: 5px;
                border-top: none;
                border-left: none;
                border-right: none;
                outline: none;
                background: black;
                color: white;
                 padding-top: 10px;
            }
            #input2 #input-group{
                width: 195px;
                 margin: 5px;
                border-top: none;
                border-left: none;
                border-right: none;
                outline: none;
                background: transparent;
                color: white;
            }
            #input3 #input-group{
                margin-left: 50px;
            }
            #input4 #input-group{
                width: 300px;
                margin: 5px;
                 border-top: none;
                border-left: none;
                border-right: none;
                outline: none;
                background: transparent;
                color: white;
            }
            #input4 #input-group1{
                width: 615px;
                margin: 5px;
                 border-top: none;
                border-left: none;
                border-right: none;
                outline: none;
                background: transparent;
                color: white;
            }
            #input5 h3{
                border-bottom: 2px solid aquamarine;
                width: 220px;
                padding: 5px;
            }
            #input6 #input-group{
                 width: 300px;
                margin: 5px;
                 border-top: none;
                border-left: none;
                border-right: none;
                outline: none;
                background: transparent;
                color: white;
            }
            #input6 #input-group1{
                  width: 615px;
                margin: 5px;
                 border-top: none;
                border-left: none;
                border-right: none;
                outline: none;
                background: transparent;
                color: white;
            }
            .btn-warning{
                margin-left: 200px;
                margin-top: 20px;
            }
            .btn-primary{
                    margin-left: 10px;
                    margin-top: 20px;
            }
            .list-unstyled li a{
                text-decoration: none;
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
                        <li><a href="HomePage.jsp" class="a1">Search</a></li>
                        <li><a href="ContactUs.jsp" class="a1">ContactUs</a></li>
                        <li><a href="AboutUs.jsp" class="a1">AboutUs</a></li>
                    </ul>
                </nav>
            </div>
             
                  
                  <form action="PaymentPackage.jsp" class="form-group">
                      <h1 class="text-center text-white">Package Booking Form</h1>
                      <div id="form">
                          <h3 class="text-white">Make Your Reservation</h3>
                          
                          <div id="input">
                          <input type="text" id="input-group" placeholder="Package ID">
                          <input type="text" id="input-group" placeholder="Package Name">
                         <input type="text" id="input-group" placeholder="City of Departure">
                         <input type="text" id="input-group" placeholder="City of Arrival">
                          <input type="text" id="input-group" placeholder="Date of Deaparture">
                          
                          <select id="input-group">
                              <option value="">All</option>
                              <option value="">Families</option>
                        <option value="">Couples</option>
                         <option value="">Friends</option>
                          <option value="">Senior Couples</option>
                           <option value="">Solo</option>
                          </select>
                          <%-- package image --%>
                      </div>
                          
                          <div id="input2">
                             <input type="number" id="input-group" placeholder="Adult">
                              <input type="number" id="input-group" placeholder="Children(2-11years)">
                               <input type="number" id="input-group" placeholder="Infant(under 2years)">
                          </div>
                         
                          
                          <div id="input4">
                               
                             <input type="text" id="input-group" placeholder="Duration">
                             <input type="number" id="input-group" placeholder="No. of Persons">
                            
                          </div>
                          
                          <div id="input5">
                              <h3 class="text-white">Contact Details </h3>
                          </div>
                          
                          <div id="input6">
                              <input type="text" id="input-group" placeholder="Full Name">
                             <input type="text" id="input-group" placeholder="Phone No.">
                             <input type="text" id="input-group1" placeholder="Email">
                          </div>
                          <button type="submit" class="btn btn-warning text-white">Continue to Payment</button>
                          <button type="reset" class="btn btn-primary text-white">Clear</button>
                      </div>
                      
                  </form>
              </div>
        
        
          <footer class="text-center text-lg-start" style="background:linear-gradient(45deg, midnightblue, transparent); margin-top: 110px;">
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
