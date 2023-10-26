<%-- 
    Document   : Feedback
    Created on : 27 Feb, 2023, 10:13:31 PM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <title>Feedback</title>
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
            }
            .col-md-4{
                    padding-top: 10px;
            
            } 
            .col{
                    padding-top: 10px;
                    margin-left: 150px;
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
             button, input, optgroup, select, textarea{
                      background: no-repeat;
                      outline: none;
                      border: 1px solid white;
                      padding: 4px 7px;
                      color: white;
                          margin-top: 20px;
              }
              .box{
                      width: 195px;
              }
            .image-fluid{
                    width: 350px;
                    height: 365px;
            }
             .fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas{
                 padding-right: 10px;
                color: black;
            }
              .a{
              color: whitesmoke;
              font-size: 15px;
              
            }
            .a:hover{
                 color: lightskyblue;
            }
            .btn{
                    width: 290px;
                margin-bottom: 30px;
               display: inline;
               margin-top: 20px;
               color: black;
               border: 2px solid black;
                border-radius: 5px;
                margin-right: 20px;
                padding: 6px 9px;
             }
             h3{
                     width: 350px;
                 color: white;
                 font-size: 25px;
                 font-family: georgia,sans-serif;
             }
             h6{
                     color: white;
                    font-size: 13px;
                        width: 90px;
             }
             .range{
                 width: 20px;
                 height: 3px;
                 -webkit-appearance: none;
                 width: 200px;
                 height: 3px;
                 background: lightyellow;
                 outline: none;
                 border-radius: 15px;
                 box-shadow: inset 0 0 7px rgba(0,0,0,1);
             }
             .list-unstyled
             {
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
            <div class="row">
                <div class="col-md-4">
                   <img src="feedback.png"  class="image-fluid"> 
                </div>
                  
               
                 <div class="col-md-4">
                     
                      <form action="feedmail.jsp">
                     <div class="col">
                         <table>
                             <tr>
                         <div>
                     <h3>TOUR FEEDBACK FORM</h3>
                         </div>
                         </tr>
                         
                         <tr>
                             <td> <h6>Full Name</h6></td>
                             <td><input type="text" name="txtfnm" placeholder="Full name"></td>
                     </tr>
                     
                     <tr>
                         <td><h6>Email</h6></td>
                         <td><input type="email" name="txtemail" placeholder="Enter your email"></td>
                     </tr>
                     
                     
                      
                      <tr>
                          <td><h6>Feedback</h6></td>
                          <td><textarea class="box" name="message" placeholder="write your message here"></textarea></td>
                      </tr>
                         </table>
                      <table>
                      <tr>
                          <td><input type="submit" value="Send" class="btn btn-info"></td>
                      </tr>
                         </table>
                     </div>
                      </form>
                </div>
             </div>
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
            <a href="#!" class="text-light">Feedback</a>
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