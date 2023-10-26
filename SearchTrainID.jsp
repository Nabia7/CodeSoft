<%-- 
    Document   : SearchTrainID
    Created on : 29 Mar, 2023, 4:31:52 PM
    Author     : Nabiya
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
         <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <title></title>
        <style>
           *{
    margin: 0;
    padding: 0;
    font-family: roboto,sans-serif;
}
body{
     background:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(train.jpg)no-repeat;
     background-size:cover;
    background-position: center;
}
.logo{
    width: 120px;
    cursor: pointer;
    color: white;
}
.booking-form-box{
     width: 600px;
    border-top: 1px solid white;
    margin-left: 380px;
      background: rgba(1,1,30,0.6);
    border-bottom: 1px solid white;
   
}
.btn{
        margin-left: 20px;
}
.booking-form{
           color: white;
    padding: 10px 10px;
       width: 700px;
    margin-left: 300px;
    background: rgba(1,1,30,0.6);
    margin-top: 50px;
    height: 130px;
    border-radius: 12px;
    border: 2px solid;
}
.booking-form label{
    margin-bottom: 10px;
    margin-top: 15px;
    font-size: 16px;
    color: white;
}
booking-form input{
    width: 150px;
}
.input-grp{
      color: white;
    padding: 10px 10px;
    display: inline-block;
    width: 600px;
    margin-left: 320px;
}
.input-grp label{
    margin-bottom: 5px;
    margin-top: 15px;
    font-size: 14px;
    color: white;
}

button, input, optgroup, select, textarea{
    background: none;
    border: 1px solid lightseagreen;
    color: wheat;
    outline: none;
    text-decoration: none;
    border-radius: 4px;
    padding: 7px 5px;
}
.btn1{
    width: 200px;
    cursor: pointer;
    outline: none;
    margin-left: 230px;
    margin-top: 20px;
    padding: 10px 19px;
    border: 3px solid lightseagreen;
       border-radius: 30px;
    font-size: 22px;
    background: none;
    color: whitesmoke;
    font-weight: bold; 
}
.btn1:hover{
    color: white;
    background: black;
    cursor: pointer;
}
.fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas{
        padding-right: 10px;
    color: blueviolet;
}
.dropdown-menu.show{

    padding: 3px 5px;
    background-color: black;
}
.dropdown-item {
    color: white;
}
H3{
    color: white;
    font-family: math;
}
.input {
    width: 100%;
}
        </style>
    </head>
    <body>
        <div class="container">
             <nav class="navbar">
  <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="tb.png" class="logo"></a>
   <div class="dropdown">
  <a class="btn btn-warning dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
    My Account
  </a>

  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#"><i class="fa fa-user"></i>Profile</a></li>
    <li><a class="dropdown-item" href="#"><i class="fa fa-user-times"></i>Logout</a></li>
  </ul>
</div>
  </div>
</nav>
             <div>
               
            <h3 class="text-center">SEARCH TRAIN</h3>
            </div>
        <form action="SearchTrainByID.jsp">
            <div>
          <div class="booking-form">
                    <label>Enter Train No.</label>
                    <input type="text" name="txttno" class="input">
                </div>
             <div class="input-grp">
                     <input type="submit" value="SEARCH" class="btn1">
                    </div>
            </div>
        </form>
        </div>
        
         <footer class="text-center text-lg-start" style="background:linear-gradient(45deg, midnightblue, transparent); margin-top: 220px;">
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
