<%-- 
    Document   : IndexPage
    Created on : 27 Feb, 2023, 10:16:09 PM
    Author     : Nabia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <script src="https://kit.fontawesome.com/94b72ded2f.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <link rel="stylesheet" href="index.css">
        <title>INDEX</title>
        <style>
            *{
    margin: 0;
    padding: 0;
    font-family: roboto,sans-serif;
}
.container{
    background:linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(hp_bg.jpg)no-repeat;
    background-size:cover;
    height: 100vh;
    background-position: center;
    width: 100%;
    padding-left: 8%;
    padding-right: 8%;
    box-sizing: border-box;
}
.navbar{
    height: 12%;
    display: flex;
    align-items: center;
}
.logo{
    width: 120px;
    cursor: pointer;
    color: white;
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
nav ul li a:hover{
    color: lightseagreen;
    cursor: pointer;
}
.row{
    display: flex;
    height: 88%;
    align-items:center;
}
.col{
    flex-basis:50%;
}
h1{
    color: white;
    font-size: 90px;
    
}
p{
    color: white;
    font-size: 15px;
}
button{
    width: 180px;
    color: black;
    font-size: 18px;
    font-weight: bold;
    padding: 12px 0px;
    background: yellow;
    border: 2px solid black;
    font-family:Georgia, serif;
    border-radius: 10px;
    outline: none;
    margin-top: 50px;
    margin-left: 150px;
}
button:hover{
    color: navy ;
    cursor: pointer;
    background: white;
    opacity: 0.2;
    
}
.card{
    width: 200px;
    height: 230px;
    display: inline-block;
    border-radius: 10px;
    padding: 15px 25px;
    box-sizing:border-box;
    margin: 10px 15px;
    cursor: pointer;
    transition: transform 0.5s;
    background-position: center;
    background-size: cover;
    border-left: 20px;
}
.card1{
     background-image: url(kolkata.jpg);
}
.card2{
     background-image: url(goa.jpg);
}
.card3{
     background-image: url(kerala.jpg);
}
.card4{
     background-image: url(meghalaya.jpg);
}
.card:hover{
    transform: translateY(-10px);
}
h5{
    color: whitesmoke;
    text-shadow: 0 0 5px whitesmoke;
    text-align: center;
}
.card p{
     text-shadow: 0 0 15px white;
     font-size: 10px;
     text-align: center;
}
.para p a{
      color: white;
    font-size: 15px;
    text-align: center;
    margin-left: 200px;
    margin-top: 50px;
}
.para p a:hover{
    color: lightseagreen;
    cursor: pointer;
}

        </style>
    </head>
    <body>
        <div class="container">
            <div class="navbar">
                <span><img src="tb.png" class="logo"></span>
                <nav>
                    <ul>
                        <li><a href="HomePage.jsp">Home</a></li>
                         <li><a href="AboutUs.jsp">AboutUs</a></li>
                          <li><a href="ContactUs.jsp">ContactUs</a></li>
                           <li><a href="Login.jsp">SignIn</a></li>
                    </ul>
                </nav>
               
               
            </div>
            <div class="row">
                <div class="col">
                    <h1>DISCOVER INDIA</h1>
                    <p>TRAVEL doesn't become adventure until you leave yourself behind.</p>
                    <p>Better to see something once than hear about it a thousand times. </p>
                    <p>Let yourself set free with<span style="color: skyblue;font-style: italic"><b> TRAVEL BLISS</b></span>.</p>
                    <button type="button">Explore</button>
                </div>
                <div class="col">
                    <div class="card card1">
                        <h5>KOLKATA</h5>
                        <P>The cultural capital of India.</P>
                    </div>
                     <div class="card card2">
                        <h5>GOA</h5>
                        <P>A perfect holiday destination.</P>
                    </div>
                     <div class="card card3">
                        <h5>KERALA</h5>
                        <P>God's own country.</P>
                    </div>
                     <div class="card card4">
                        <h5>MEGHALAYA</h5>
                        <P>Half way to heaven.</P>
                    </div>
                    <div class="para"><p><a href="HomePage.jsp">Many More</a></p></div>
                </div>
            </div>
        </div>
         
    </body>
</html>