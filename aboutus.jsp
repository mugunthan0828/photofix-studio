<%-- 
    Document   : aboutus
    Created on : 7 Nov, 2020, 9:09:07 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Oleo+Script:wght@700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
      <style>
 .img-fluid {
    max-width: 100%;
    height: auto;
}
          .container-fluid {
              padding-left: 15px;
    padding-right: 15px;
    height: 100%;
    padding: 10% 10%;
    .effect{
        display:block;
        width:100%;
        height:100%;
    }
}
  .mySlides {display:none;
margin:0px;
width:120%;
height: 100%;
   
   
       
  }
          .head h1{
            font-size: 36px;
            text-align: center;
            font-family: Oleo Script,Roboto,Helvetica,Arial,sans-serif;
        }
        .linestyle{
            width: 100%;
            height:100%;
            font-size: 16px;
            text-align: center;
            font-family: 'Montserrat', sans-serif;
      
}
     .linestyle-p1{
            font-size: 20px;
            text-align: center;
            font-family: 'Lovers Quarrel', cursive;
              width: 100%;
            height:100%;padding: 10px 10px;
            padding-top: 10px;
            padding-bottom: 10px
      
}
        
.col-sm-4{
    width: 25px;
    height: 300px;
    padding: 10px;
  
}

.quotes{
    text-align: center;
    font-family: 'Lovers Quarrel', cursive;
    font-size: 20px;
}
 footer {

  position: sticky;
  bottom: 0;
  left: 0;
  width: 100%;
  height:100%;
  

  background: Black;
  display: grid;
  color:white;
  padding:10px;
  margin-bottom: 0px;
  margin-top: 0px;
}

* {
  box-sizing: border-box;
}

      </style>
    </head>
    
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        <div>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div id="toolbar" class="toolbar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="toolbar-container">
                            <a class="booking" href="ulogin.jsp">Booking</a>

                            <aside id="text-2" class="widget widget_text">
                                <div class="textwidget">
                                    <div class="thim-have-any-question">
                                        Got a question?
                                        <div class="mobile">
                                        </div>
                                        <div class="email"><i class="fa fa-envelope"></i><a href="mailto:info@photofix.org">info@photofix.org</a>
                                        </div>
                                    </div>
                                </div>
                            </aside>
                            <aside id="login-popup-7" class="widget widget_login-popup">
                                <div class="thim-widget-login-popup thim-widget-login-popup-base template-base">
                                    <div class="thim-link-login thim-login-popup">
                                        <a class="register" href="register.jsp">Register</a>
                                        <a class="login" href="login">Login</a></div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
                <a class="navbar-brand"><img src="images/logopc.jpg"></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right" style="margin-top: 5%;">
                    <li><a href="homepage">HOME</a></li>
                    <li><a href="aboutus">ABOUT</a></li>
                    <li><a href="service">SERVICES</a></li>
                    <li><a href="teams">TEAMS</a></li>
                    <li><a href="blog">BLOG</a></li>
                    <li><a href="Contactus">CONTACT</a></li>
                </ul>
            </div>
        </div>
       </nav>
        </div>
    <div id="about" class="container-fluid">
        <div class="row">
            <div class="col-sm-8">
                <h2>About us</h2>
                <h4>We specialize in wedding photography, corporate, family and senior portraits, often traveling to your destination to capture the perfect moment in the perfect place.We will be there with you every step of the way to guarantee your special moments are captured for all time.

To us photography is about people being real and then letting us paint a picture of that moment to remember it forever. This is the story that matters most: real people, real stories, real moments.

We are incredibly blessed to have a team of photographers who work with us on any given weekend. Please take a few minutes to get to know us.

We would love to visit with you by phone or in person and talk about your wedding, event, portrait session or video project.</h4>
            </div>
            <br>
            <div class="col-sm-4"> 
                <img src="images/wedding.jpg" style="
                     padding: 50px 0px;
                     height: 300px;
                     width:400px;
                     border: 2em;
                     ">
            </div>
            
        </div><div class="quotes">
         <p>"we are making Photographs<span> To Understand What Our Lives Means To Us.</span></p>
    </div>
    </div>
           
<div class="img-fluid">
   
  <img class="mySlides" src="images\img1.jpg" style="width:100%">
  <img class="mySlides" src="images\img2.jpg" style="width:100%">
  <img class="mySlides" src="images\img3.jpg" style="width:100%">
    </div>
         <div>          
            <footer class="footer text-left"> <p>Copyright &#169; 2020 Photofixstudio- All Rights Reserved.</p</footer>
       </div>
    </body>
    <script>
        var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}</script>

</html>
