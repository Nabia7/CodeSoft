
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <title>AboutUs</title>
        
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                background:linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url(hp_bg.jpg)no-repeat;
                background-size:cover;
                height: 100vh;
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
            hr{
                color: white;
                border: 1px solid white;
            }
            h1{
                font-family: georgia,serif;
              color: white;
    font-size: 30px;
    text-align: center;
    margin-bottom: 15px;
            }
            p{ font-family: Arial,sans-serif;
                  color: white;
    font-size: 15px;
    text-align: center;
            }
            .card{
                background-color: lightgoldenrodyellow;
                border: 3px solid black;
       width: 350px;
    height: 200px;
    display: inline-block;
    border-radius: 10px;
    padding: 15px 25px;
    box-sizing:border-box;
    margin: 10px 15px;
    cursor: pointer;
    background-position: center;
    border-left: 20px;
             }
             h5{
                     margin-top: 10px;
    color: black;
    text-shadow: 0 0 5px lightgray;
    text-align: center;
               }
            .card p{
     text-shadow: 0 0 15px white;
     font-size: 14px;
     text-align: center;
     color: black;
     margin-top: 16px;
                  }
                  .fa, .fa-brands, .fa-classic, .fa-regular, .fa-sharp, .fa-solid, .fab, .far, .fas{
                          margin-left: 140px;
                  }
                  .col{
                          margin-left: 12px;
                  }
                  .card:hover{
    transform: translateY(10px);
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
                        <li><a href="Login.jsp" class="a1">Login</a></li>
                        <li><a href="CustomerRegistration.jsp" class="a1">Registration</a></li>
                        <li><a href="ContactUs.jsp" class="a1">ContactUs</a></li>
                        <li><a href="AboutUs.jsp" class="a1">AboutUs</a></li>
                    </ul>
                </nav>
            </div>
            <hr>
              <div class="row">
                <div class="col">
                    <h1>ABOUT TRAVEL BLISS</h1>
                    <p>“Travel is the main thing you purchase that makes you more extravagant”.
                        We, at ‘Travel Bliss’, swear by this and put stock in satisfying travel dreams that make you perpetually rich constantly.
                        Through our exceptionally curated occasion bundles, we need to take you on an adventure where you personally enjoy the stunning magnificence of India and far-off terrains.
                        We need you to observe sensational scenes that are a long way past your creative ability.
                        Travel Bliss is specially designed for those travellers who are looking forward to explore the greatness of Indian history and culture.
                        We offer best budget friendly flights and hotels with excellent service.
                        We believe that the strength of our brand, the quality of our services, our user-friendly website (www.travelbliss.com),our customer centric approach, will enable us to develop significant market share in the domestic airline ticket business in India.
                    </p>
                   
                    
                </div>
              </div>
                <div class="row">
                     <div class="col">
                         
                    <div class="card card1">
                        <i class="fa fa-plane"></i>
                         <h5>AIRLINE TICKETS</h5>
                        <P class="para">It consists of the sale of airline tickets as well as airline tickets sold as part of the holiday packages.</P>
                    </div>
                     </div>
                         
                       <div class="col">  
                     <div class="card card2">
                        <i class="fa fa-hospital-o"></i>
                        <h5>HOTELS and HOLIDAYS</h5>
                        <P class="para">It consists of standalone sales of hotel rooms as well as travel packages (which may include hotel rooms, cruises, travel insurance and visa processing).</P>
                    </div>
                       </div>
                         <div class="col"> 
                          <div class="card card3">
                        <i class="fa fa-train"></i>
                         <h5>TRAINS and MORE</h5>
                        <P class="para">It consists of rail tickets, bus tickets, taxi rentals and ancillary value added services such as travel insurance, visa processing and tickets for activities and attractions.</P>
                    </div>
                    
                     </div>
                </div>
            
           
       
        
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
