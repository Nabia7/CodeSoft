<%-- 
    Document   : AddPackage
    Created on : 27 Feb, 2023, 10:23:22 PM
    Author     : Nabiya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="addpackage.css">
        <title>ADD PACKAGE</title>
        <style>
                  *{
    margin: 0;
    padding: 0;
    font-family: roboto,sans-serif;
}
body{
     background:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(package.jpg)no-repeat;
     background-size:cover;
    height: 100vh;
    background-position: center;
}
.logo{
    width: 120px;
    cursor: pointer;
    color: white;
}
.form-group{
    height: 520px;
    width: 700px;
    margin: auto;
    padding: 20px;
}
a{
    color: whitesmoke;
    font-size: 18px;
}
a:hover{
    color: lightskyblue;
    
}
.form-group h2{
    border: 2px solid lightseagreen;
    color: whitesmoke;
    background-color: black;
    
}
h5{
    color: lightcyan;
        padding-top: 20px;
}
.box1 input{
    margin-right: 50px;
    padding: 4px 6px;
    border: none;
    background: none;
    border-bottom: 2px solid white;
}
.box2 input{
    margin-right: 50px;
    padding: 4px 6px;
    border: none;
    background: none;
    border-bottom: 2px solid white;
}
.box3 input{
     
    padding: 4px 6px;
    border: none;
    background: none;
    border-bottom: 2px solid white;
}
input{
    color: white;
}
.btn1{
    cursor: pointer;
    outline: none;
    margin-left: 270px;
    margin-top: 40px;
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
.row{
    height: 40px;
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
        </style>
    </head>
     <body>
        <div class="container">
            <div class="navbar">
                <span style="width: 120px; cursor: pointer"><img src="tb.png" class="logo"></span>
                <nav>
                   <a class="a" href="LogoutPage.jsp">Logout</a>
                </nav>
            </div>
            <form action="AddPackageCode.jsp" class="form-group">
                 
                <h2 class="text-center">ADD PACKAGE DETAILS</h2>
                <div class="box">
                <table>
                <tr> 
                    <td><div class="box1">
                    <h5>Package ID</h5>
                    <input type="text"  name="txtpid" placeholder="Package Id">
                        </div></td>
                        <td> <div class="box2">
                    <h5>Package Name</h5>
                     <input type="text"  name="txtpnm" placeholder="Package Name">
                            </div></td>
                             <td><div class="box3">
                    <h5>Package Type</h5>
                    <input type="text" name="ptype" placeholder="Package type">
                            </div></td>
                </tr>
                <tr>
                    <td><div class="box1">
                    <h5>From City</h5>
                    <input type="text"  name="from" placeholder="Flight">
                        </div></td>
                        <td> <div class="box2">
                    <h5>To City</h5>
                     <input type="text"  name="to" placeholder="Hotel category">
                            </div></td>
                             <td><div class="box3">
                    <h5>Description</h5>
                     <input type="text"  name="des" placeholder="places">
                            </div></td>
                </tr>
                <tr>
                    <td><div class="box1">
                    <h5>Duration</h5>
                    <input type="text"  name="txtdur" placeholder="duration">
                        </div></td>
                        <td><div class="box2">
                    <h5>Mode of Transfer</h5>
                     <input type="text"  name="txtmot" placeholder="discount">
                            </div></td>
                             <td><div class="box3">
                    <h5>Budget</h5>
                    <input type="text"  name="txtbudt" placeholder="summary">
                            </div></td>
                </tr>
                
                </table>
                    <table>
                       <tr>
                    <td><div>
                            <input type="submit" value="ADD DETAILS" class="btn1">
                        </div></td>
                </tr> 
                    </table>
                    </div>
               
            </form>
            
        </div>
        
        
        
        
        
         <footer class="bg-dark text-center text-lg-start" style="background:linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)); margin-top: 80px;" >
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
