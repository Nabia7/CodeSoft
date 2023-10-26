<%-- 
    Document   : SearchPackageByID
    Created on : 25 Mar, 2023, 12:39:39 AM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <title>JSP Page</title>
         <style>
            *{
                font-family: poppins, sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                outline: none;
                border: none;
                text-decoration: none;
               
            }
             body{
                background:linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(package.jpg)no-repeat;
                background-size:cover;
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
              .fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas{
                 padding-right: 10px;
                color: white;
            }
            .row{
                background: linear-gradient(transparent);
    border-radius: 5px;
    box-shadow: 0 1px 15px rgba(0,0,0,0.9);
    padding: 20px;
    width: 550px;
        margin-left: 410px;
    margin-top: 40px;
            }
            .submit-btn{
                width: 100%;
                background: linear-gradient(45deg, blueviolet, deeppink);
                margin-top: 20px;
                padding: 10px;
                font-size: 17px;
                border-radius: 10px;
                color: white;
                cursor: pointer;
                transition: .2s linear;
            }
            .submit-btn:hover{
                letter-spacing: 2px;
                opacity: 0.8;
            }
            .col{
                        margin-left: 460px;
                      margin-top: 50px;
                      width: 500px;
            }
            h3{
                color: #fffbc9;
                font-family: blueberry,serif;
                font-size: 25px;
                margin-bottom: 17px;
                margin-left: 10px;
            }
            .card-number-input{
                    border: 2px solid midnightblue;
                    opacity: 0.9;
                    padding: 2px 4px;
                    border-radius: 4px;
            }
            h1{
            color: FLORALWHITE;
    width: 610px;
    margin-left: 420px;
    margin-bottom: 30px;
    margin-top: 20px;
            }
        </style>
    </head>
    <body>
                 <div class="container">
   <div class="navbar">
                <span style="width: 120px; cursor: pointer"><img src="tb.png" class="logo"></span>
                <nav>
                    <ul>
                        <li><a href="#" class="a1">Home</a></li>
                        <li><a href="#" class="a1">Search</a></li>
                        <li><a href="#" class="a1">ContactUs</a></li>
                        <li><a href="#" class="a1">AboutUs</a></li>
                    </ul>
                </nav>
            </div>
        
         <h1><b>SEARCH PACKAGE RESULT</b></h1>
        <%@page import="java.sql.*" %>
        <%
            try{   // exception handling try block
                int r; ResultSet rs;   // variable declaration
                r=Integer.parseInt(request.getParameter("txtpid"));  // catch value
                 Class.forName("oracle.jdbc.driver.OracleDriver");    // for database connectivity
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");    // for database connectivity
            String qry="select * from addpackage  where packid=?"; // send qry for execution 
           PreparedStatement ps=con. prepareStatement(qry);   // create DB connection
           ps.setInt(1, r);   //passing parameter
           rs=ps.executeQuery();  //execute SQL qry
           if(rs.next())  // if record matched
               
           {  //printing values
        %>
        <div class="row">
            <table>
                <tr> <td class="inputBox" style="color: white; padding: 10px;">Package Name:</td>
                    <td>
                    <input type="text" class="card-number-input" value="<%= rs.getString("packnm")%>">
                    </td></tr>
                
                <tr><td class="inputBox" style="color: white; padding: 10px;">Description:</td>
                    <td>
                    <input type="text" class="card-number-input" value="<%= rs.getString("description")%>">
                </td></tr>
                
                <tr><td class="inputBox" style="color: white; padding: 10px;">Package Type:</td>
                    <td>
                    <input type="text" class="card-number-input" value="<%= rs.getString("type")%>">
                </td></tr>
                
                <tr><td class="inputBox" style="color: white; padding: 10px;">From City:</td>
                    <td>
                    <input type="text" class="card-number-input" value="<%= rs.getString("source")%>">
                </td></tr>
                
                <tr><td class="inputBox" style="color: white; padding: 10px;">To City:</td>
                    <td>
                    <input type="text" class="card-number-input" value="<%= rs.getString("destination")%>">
                </td></tr>
                
                <tr><td class="inputBox" style="color: white; padding: 10px;">Duration:</td>
                    <td>
                    <input type="text" class="card-number-input" value="<%= rs.getString("duration")%>">
                </td></tr>
                
                <tr><td class="inputBox" style="color: white; padding: 10px;">Mode of Transfer:</td>
                    <td>
                    <input type="text" class="card-number-input" value="<%= rs.getString("transfer")%>">
                </td></tr>
                
                <tr><td class="inputBox" style="color: white; padding: 10px;">Budget:</td>
                    <td>
                    <input type="text" class="card-number-input" value="<%= rs.getString("budget")%>">
                    </td></tr>
            </table>
                <%
                        }
           else    //if unmatched
                        {
                            out.println("Record Not Found");
                        }
                        }
                        catch(Exception ex)  // exception handling try block
                        {
                            out.println(ex);
                        }
                %>
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
