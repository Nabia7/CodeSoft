<%-- 
    Document   : PaymentTrainCode
    Created on : 10 Apr, 2023, 10:26:56 PM
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
        <script>
            function show()
            { 
                if(confirim("Invalid Card Details"))
                { 
                    window.location="PaymentFlight.jsp";
                }
                else
                {
                     window.location="PaymentCode.jsp";
                }
            }
        </script>
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
                background:linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(train.jpg)no-repeat;
                background-size:cover;
                background-position: center;
            }
            .logo{
                width: 120px;
                cursor: pointer;
                color: white;
            }
             .a{
                text-decoration: none;
                color: white;
            }
            .a:hover{
                 color: blue;
                 background-color: white;
                 padding: 8px 10px;
                 border-radius: 5px;
            }
              .fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas{
                 padding-right: 10px;
                color: white;
            }
            .row{
                background: linear-gradient(7deg, lightskyblue, transparent);
    border-radius: 5px;
    box-shadow: 0 10px 15px rgba(0,0,0,0.9);
    padding: 20px;
    width: 700px;
    margin-left: 250px;
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
    margin-left: 30px;
    margin-bottom: 50px;
            }
        </style>
    </head>
    <body>
                     <div class="container">
                          <nav class="navbar">
  <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="tb.png" class="logo"></a>
      <a class="a" href="#">HOME</a>
       <a class="a" href="#">SEARCH</a>
        <a class="a" href="#">FEEDBACK</a>
   <div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
    My Account
  </a>

  <ul class="dropdown-menu bg-dark">
    <li><a class="dropdown-item text-light bg-dark" href="#"><i class="fa fa-user"></i>My Profile</a></li>
    <li><a class="dropdown-item text-light bg-dark" href="#"><i class="fa fa-sign-out"></i>Logout</a></li>
  </ul>
</div>
  </div>
</nav>
        
        
        <%@page import="java.sql.*" %>
        <%! int transid,amt,cno,cv; String ctype, bank, holdernm, em, ey; ResultSet r; %> // variable declaration
        <%
            java.util.Date today = new java.util.Date();
            Date currentDate = new java.sql.Date(today.getTime());
             // catching values 
            transid=Integer.parseInt(request.getParameter("trnid"));
            amt=Integer.parseInt(request.getParameter("txtam"));
            cno=Integer.parseInt(request.getParameter("txtcn"));
            holdernm=request.getParameter("txtch");
            em=request.getParameter("emm");
            ey=request.getParameter("eyy");
            cv=Integer.parseInt(request.getParameter("txtcvv"));
            ctype=request.getParameter("type");
            bank=request.getParameter("bnm");
            %>
            <%
                    try {  // exception handling try block

                 Class.forName("oracle.jdbc.driver.OracleDriver");  // for database connectivity
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");  // for database connectivity
            String qry="select * from BankTable  where cardno=? and cardtype=? and banknm=? and cvv=? and expirymm=? and expiryyy=? and holdernm=? and balance>=?";  // send qry for execution     
           PreparedStatement ps=con. prepareStatement(qry); // create DB connection
           //Passing parameters
           ps.setInt(1, cno);
           ps.setString(2, ctype);
           ps.setString(3, bank);
           ps.setInt(4, cv);
           ps.setString(5, em);
           ps.setString(6, ey);
           ps.setString(7, holdernm);
           ps.setInt(8, amt);
           r=ps.executeQuery(); //execute SQL qry
           if(!r.next())  // if record matched
           { %>
           <script>  //javascript function show 
               show();
               </script>
               <%
           }
              else //if unmatched
           {
               String cnm=request.getParameter("cnm");  //session declare
               String qry1="insert into payment values(?,?,?,?,?,?,?)"; // send qry for execution   
               PreparedStatement ps1=con. prepareStatement(qry1); // create DB connection
          //Passing parameters
               ps1.setInt(1,transid);
           ps1.setInt(2, amt);
           ps1.setString(3, cnm);
           ps1.setString(4, currentDate.toString());
           ps1.setInt(5, cno);
           ps1.setString(6, ctype);
           ps1.setString(7, bank);
                int x=ps1.executeUpdate(); //execute SQL qry
               }%>
                <div class="row">
                   
               <table>
                   <tr><td><h1><b>Thank You For Making Payment</b></h1></td></tr>
               </table>
                   
               <table>
                   
                   <tr><td><h3><u>Payment Receipt</u></h3></td></tr>
                   
                   <tr>                                                                                          
                       <td class="inputBox" style="color: white; padding: 10px;">Transaction No.:</td>
                       <td><input type="text" name="trns" class="card-number-input" value="<%=transid %>"></td>
                   </tr>
                       
                   <tr>
                       <td class="inputBox" style="color: white; padding: 10px;">Payment Amount:</td>
                       <td><input type="text" name="payam" class="card-number-input" value="<%=amt %>"></td>
                   </tr>
                   
                   <tr>
                       <td class="inputBox" style="color: white; padding: 10px;">Card No.:</td>
                       <td><input type="text" name="crdno" class="card-number-input" value="<%=cno %>"></td>
                   </tr>
                   
                   <tr>
                       <td class="inputBox" style="color: white; padding: 10px;">Bank Name:</td>
                       <td><input type="text" name="bknm" class="card-number-input" value="<%=bank %>"></td>
                   </tr>
                   
                   <tr>
                       <td class="inputBox" style="color: white; padding: 10px;">Payment Date:</td>
                       <td><input type="text" name="payd" class="card-number-input" value="<%=currentDate %>"></td>
                   </tr>                       
               </table>
                   
                    <input type="button" value="Print" class="submit-btn" onclick="window.print()">    

               </div>
               </div>
                       <%
                    }catch(Exception ex)  //exception handling catch block
                    {
                    out.println(ex);
                    }
                       %> 
                       
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
