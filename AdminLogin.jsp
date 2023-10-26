<%-- 
    Document   : AdminLogin
    Created on : 9 Apr, 2023, 11:38:54 PM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
    
       <title>LOGIN</title>
       <style>
           *{
    padding: 0;
    margin: 0;
    font-family: roboto,sans-serif;
}
body{
     background:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(hp_bg.jpg)no-repeat;
     background-size:cover;
    height: 100vh;
    background-position: center;
}
.container{
     height: 100vh;
    background-position: center;
    width: 100%;
    padding-left: 8%;
    padding-right: 8%;
    box-sizing: border-box;
    background-size:cover;
}
.row{
          width: 350px;
    margin-left: 410px;
}
.col{
       width: 500px;
    margin-top: 90px;
    background: linear-gradient(45deg, black, transparent);
    border: 1px solid beige;
    border-radius: 7px;
    opacity: 0.9;
}
.fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas {
       color: white;
    padding: 15px 0px;
    margin-left: 235px;
    position: initial;
}
.h4, h4{
      font-size: 30px;
    margin-left: 70px;
    text-decoration: none;
    color: whitesmoke;
}
 h6{
        color: white;
    font-size: 16px;
    font-weight: 200;
    margin-left: 9px;
}
.box{
    width: 100%;
    margin: 32px 0px;
        margin-top: 40px;
}
.box input {
     margin-top: 7px;
    width: 470px;
    padding: 10px 7px;
    font-size: 17px;
    outline: none;
    color: black;
   border: 2px solid lightskyblue;
    margin-left: 8px;
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
    border: 3px solid lightskyblue;
    border-radius: 10px;
    font-size: 20px;
    background: black;
    color: whitesmoke;
    font-weight: bold;
    margin-left: 190px;
    width: 150px; 
}
.btn1:hover{
    color: black;
    background: white;
    cursor: pointer;
}
p{
    color: whitesmoke;
    margin-left: 10px;
}
.logo{
    width: 120px;
    cursor: pointer;
    color: white;
    margin-top: 70px;
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
    color: honeydew;
    border: 1px solid lavenderblush;
    padding: 5px 10px;
    border-radius: 15px;
}
.image{
    width: 1100px;
    height: 100px;
    margin-top: 70px;
    margin-left: 20px;
    
}
       </style>
    </head>
    <body>
        <div class="form">
        <div class="container">
             <div class="navbar">
                 <table>
                     <tr>  <td> <span style="width: 120px; cursor: pointer"><img src="tb.png" class="logo"></span></td>
                      </tr>
                 </table>
                 <nav>
                    <ul>
                       <li><a href="#" class="a1">Login</a></li>
                        <li><a href="AdminHome.jsp" class="a1">Home</a></li>
                    </ul>
                </nav>
                </div>
            <div class="row">
                <div class="col">
                    <h1 class="p-3"><i class="fa fa-user"></i></h1>
                        <h4 class="h4 text-center">ADMINISTRATION LOGIN</h4>
                        <form action="AdminLoginCode.jsp"> 
                            
                                <div class="box">
                                    <h6>Enter Username</h6>
                                    <input type="text" name="txt" placeholder="Username">
                                </div>
                                 
                                <div class="box">
                                    <h6>Enter Password</h6> 
                                    <input type="password" name="pass" placeholder="Password">
                                </div>
                                     
                            <div>
                            
                                <input type="submit" value="Login" class="btn1">
                            </div>
                           
                              </form>
                            </div>
                
                          
                         </div>
        </div>
        </div>
        
        <footer class="bg-light text-center text-lg-start">
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.4);text-align: center;height: 60px;color: white;">
    © 2020 Copyright:
    <a class="text-light" href="https://travelbliss.com/" style="color: white;">TravelBliss.com</a>
  </div>
  <!-- Copyright -->
</footer>
    </body>
</html>
