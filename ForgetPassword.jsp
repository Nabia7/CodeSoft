<%-- 
    Document   : ForgotPassword
    Created on : 27 Feb, 2023, 10:14:15 PM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <title>Forgot Password</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                background:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(hp_bg.jpg)no-repeat;
                background-size:cover;
                height: 100vh;
                background-position: center;
            }
            .row{
                border: 3px solid white;
                background: rgba(0, 0, 0, .7);
                    width: 800px;
                  height: 390px;
                  margin-left: 250px;
                      margin-top: 30px;
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
            .fa.fa-user-circle-o {
                padding-right: 7px;
                color: white;
            }
            .fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas{
                 padding-right: 10px;
                color: white;
            }
            H3{
               color: white;
               
               font-family: georgia,serif;
              }
              .col-md-4{
                  width: 370px;
              }
              .btn1{
                       margin-left: 50px;
    margin-bottom: 30px;
    display: inline;
    margin-top: 20px;
    color: white;
    border-radius: 5px;
    margin-right: 20px;
    padding: 6px 9px;
              }
              .btn1:hover{
                  color: black;
                  background-color: red;
              }
              .img-fluid{
                  height: 370px;
                  margin-top: 8px;
                  width: 350px;
                  background: whitesmoke;
              }
              h6{
                  color: white;
                  margin-top: 45px;
                }
                .col{
                           margin-left: 55px;
                     margin-top: 35px;
              }
              button, input, optgroup, select, textarea{
                      background: no-repeat;
                      outline: none;
                      border: 1px solid white;
                      padding: 4px 7px;
                      color: white;
                       width: 300px;
                       margin-top: 7px;
              }
              p{
                  color: white;
                  font-size: 14px;
              }
               .btn-success {
                  margin-top: 50px;
    width: 150px;
    border: 2px solid black;
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
                <form action="forgetcode.jsp">
           
            <div class="row">
                
                <div class="col-md-4">
                    <img src="forgotpassword.jpg" class="img-fluid">
                </div>
                 <div class="col-md-4">
                     <div class="col">
                                 <div>
            <h3>FORGET PASSWORD?</h3>
            </div>
                         <p>Enter your email and we'll send you a link to reset your password. </p>
                     
                     <h6>Enter Email</h6>
                     
                      <input type="email" name="txteml" placeholder="enter yout email">
                      <div>
                          <input type="submit" value="SUBMIT" class="btn btn-success">
                      </div>
                     </div>
                </div>
                
                    
                
                
             </div>
            
                </form>
        </div>
        
      <footer class="text-center text-lg-start" style="background:linear-gradient(45deg, midnightblue, transparent); margin-top: 150px;">
  <!-- Grid container -->
  <div class="container p-4">
      <!--Grid row--><table><tr>
    <div class="box1">
      <!--Grid column-->
      <td> <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        

        <ul class="list-unstyled">
          <li>
            <a href="#!" class="text-light">Flights</a>
          </li>
          <li>
            <a href="#!" class="text-light">Hotels</a>
          </li>
        
        </ul>
          </div></td>
      <!--Grid column-->

      <!--Grid column-->
      <td> <div class="col-lg-3 col-md-6 mb-4 mb-md-0" style="margin-left:300px;">
        

        <ul class="list-unstyled">
          <li>
            <a href="#!" class="text-light">Trains</a>
          </li>
          <li>
            <a href="#!" class="text-light">Holidays</a>
          </li>
     
        </ul>
          </div></td>
      <!--Grid column-->

      <!--Grid column-->
      <td> <div class="col-lg-3 col-md-6 mb-4 mb-md-0" style="margin-left:300px;width:100px;">
       

        <ul class="list-unstyled mb-0">
          <li>
            <a href="#!" class="text-light">Flight Status</a>
          </li>
          <li>
            <a href="#!" class="text-light">Forgot Password</a>
          </li>
         
        </ul>
          </div></td>
      
          <td> <div class="col-lg-3 col-md-6 mb-4 mb-md-0 text-light" style="margin-left:300px; width:250px;">
    © 2020 Copyright:
    <a class="text-light" href="https://TravelBliss.com/">TravelBliss.com</a>
              </div></td>

      <!--Grid column-->
    </div>
          </tr></table>

    <!--Grid row-->
  </div>
  <!-- Grid container -->

</footer>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>