<%-- 
    Document   : PaymentFlight
    Created on : 19 Mar, 2023, 5:02:39 PM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <title>Payment Page</title>
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
                background:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url(plane.jpg)no-repeat;
                background-size:cover;
                height: 150vh;
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
            .container{
                
                display: flex;
                
                justify-content: center;
                flex-flow: column;
                padding-bottom: 60px;
            }
            .container form{
                background: linear-gradient(45deg, white, transparent);
    border-radius: 5px;
    box-shadow: 0 10px 15px rgba(0,0,0,0.9);
    padding: 20px;
    width: 600px;
    margin-left: 350px;
    margin-top: 60px;
            }
            .container form .inputBox{
                margin-top: 20px;
            }
            .container form .inputBox span{
                display: block;
                color: black;
                padding-bottom: 5px;
                font-size: 15px;
            }
            .container form .inputBox input,
            .container form .inputBox select{
                width: 100%;
                padding: 10px;
                border-radius: 10px;
                border: 1px solid rgba(0,0,0,0.3);
                color: gray;
            }
            .container form .flexbox{
                display: flex;
                gap: 15px;
            }
            .container form .flexbox .inputBox{
                flex: 1 1 150px;
            }
            .container form .submit-btn{
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
            .container form .submit-btn:hover{
                letter-spacing: 2px;
                opacity: 0.8;
            }
            .container form .input input{
                width: 455px;
                padding: 10px;
                border-radius: 10px;
                border: 1px solid rgba(0,0,0,0.3);
                color: gray;
            }
            .container form .input{
                margin-top: 20px;
            }
            legend{
                color: lemonchiffon;
                font-family: georgia, serif;
                padding-bottom: 12px;
                border-bottom: 1px solid black;
            }
        </style>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%! int tid;%>
        <%
            try{
            ResultSet rs;
             Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");
            String qry="select max(transid) from payment ";   
           PreparedStatement ps=con. prepareStatement(qry);
           
           rs=ps.executeQuery();
           if(rs.next())
           { 
               tid=rs.getInt(1);
               tid++;
           }
            }catch(Exception ex)
            {
                out.println(ex);
            }
        %>
        
        <div class="container">
               <nav class="navbar">
  <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="tb.png" class="logo"></a>
      <a class="a" href="#">FLIGHTS</a>
       <a class="a" href="#">HOTELS</a>
        <a class="a" href="#">TRAINS</a>
         <a class="a" href="#">HOLIDAYS</a>
   <div class="dropdown">
  <a class="btn btn-warning dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
    My Account
  </a>

  <ul class="dropdown-menu bg-dark">
    <li><a class="dropdown-item text-light bg-dark" href="#"><i class="fa fa-user"></i>Login</a></li>
    <li><a class="dropdown-item text-light bg-dark" href="#"><i class="fa fa-sign-in"></i>SignUp</a></li>
    <li><a class="dropdown-item text-light bg-dark" href="#"><i class="fa fa-sign-out"></i>Logout</a></li>
  </ul>
</div>
  </div>
</nav>
           
            <form action="ReceiptFlight.jsp">
                <fieldset>
                    <legend>Payment Details</legend>
                     <div class="inputBox">
                    <span>TRANSACTION ID</span>
                    <input type="text" name="trnid" value="<%=tid %>" >
                </div>
                     <div class="inputBox">
                    <span>ENTER AMOUNT</span>
                    <input type="text" name="txtam" placeholder="amount" >
                </div>
                <div class="inputBox">
                    <span>ENTER YOUR CARD NUMBER</span>
                    <input type="text" name="txtcn" placeholder="xxxx-xxxx-xxxx-xxxx" maxlength="16" class="card-number-input">
                </div>
                 <div class="inputBox">
                    <span>ENTER CARD HOLDER NAME</span>
                    <input type="text" name="txtch" placeholder="card holder name" class="card-number-input">
                </div>
                <div class="flexbox">
                <div class="inputBox">
                    <span>EXPIRY MM</span>
                    <select name="emm" id="" class="month-input">
                        <option value="month" selected disabled>Month</option>
                        <option value="01">01</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                </div>
                     <div class="inputBox">
                    <span>EXPIRY YY</span>
                    <select name="eyy" id="" class="month-input">
                        <option value="year" selected disabled>Year</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                         <option value="2023">2023</option>
                          <option value="2024">2024</option>
                           <option value="2025">2025</option>
                            <option value="2026">2026</option>
                             <option value="2027">2027</option>
                              <option value="2028">2028</option>
                               <option value="2029">2029</option>
                                <option value="2030">2030</option>
                                 <option value="2031">2031</option>
                                  <option value="2032">2032</option>
                                   <option value="2033">2033</option>
                    </select>
                </div>
                     <div class="inputBox">
                    <span>CVV</span>
                    <input type="password" name="txtcvv" maxlength="4" class="cvv-input">
                </div>
                </div>
                    <div class="flexbox">
                         <div class="inputBox">
                    <span>CARD TYPE</span>
                    <select name="type" id="" class="card-type">
                        <option value="Debit">Debit</option>
                        <option value="Credit">Credit</option>
                    </select>
                </div>
                            <div class="inputBox">
                    <span>BANK NAME</span>
                    <select name="bnm" id="" class="card-type">
                        <option value="SBI">SBI</option>
                        <option value="ICICI">ICICI</option>
                        <option value="HDFC">HDFC</option>
                        <option value="PNB">PNB</option>
                    </select>
                </div>
                    </div>
                
                <input type="submit" value="Make Payment" class="submit-btn">
                </fieldset>
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
