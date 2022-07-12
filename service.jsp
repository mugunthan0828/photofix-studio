<%-- 
    Document   : service
    Created on : 6 Nov, 2020, 10:30:44 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Oleo+Script:wght@700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/service.css" type="text/css">
    <style>

.img-banner {
    max-width: 100%;
    height: auto;
}    
        footer {
  position: sticky;
  bottom: 0;
  left: 0;
  width: 100%;
  height:100%;
  

  background: white;
  display: grid;
  color:black;
  padding:10px;
  margin-bottom: 0px;
  margin-top: 0px;
}

* {
  box-sizing: border-box;
}
.serq p{
text-align: center;


font-size: 20px;
font-style: italic;
color: #581845;
font-family: 'Tangerine', cursive;

}

    </style>
        
    </head>
        <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

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
                                        <a class="login" href="login.jsp">Login</a></div>
                                        
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
                    <li><a href="homepage">Home</a></li>
                    <li><a href="aboutus">ABOUT</a></li>
                    <li><a href="service">SERVICES</a></li>
                    <li><a href="teams">TEAMS</a></li>
                    <li><a href="blog">BLOG</a></li>
                    <li><a href="Contactus">CONTACT</a></li>
                </ul>
            </div>
        </div>
    </nav>
        
<div class="img-banner">
    <img src="images/banner-head-1.jpg" class="img-banner" alt="banner" style="width:100%"/> 
</div>
           
<div class="services">
    <h1 class="animate__animated animate__bounce">Our Services</h1>
    
      <div class="cen">
        <div class="service" >
              <div class="serq"><br><br>
                  <div class="animate__animated animate__bounce">
                <p>Love recognizes no barriers</p>
            <img src="images/weddingicon.jpg" alt="" style="width:300px;height:300px;"/><br>
          <h2>Wedding</h2>
          <p>We cover everything from on-location shooting to take excellent shots. 
              Our experienced photographers and videographers works with technologically
              and use with superb cameras and equipment to capture the finest details of an event.
              Wedding photography is all concerning the wonder of a flash. the
              foremost lovely moment at a flicker of a second, and an honest photograph is often
              concerning keeping the instant from feat.</p>
              </div></div></div>

        <div class="service">
            <div class="serq"><br><br>
                         <div class="animate__animated animate__bounce">
                <p>Smile and others will smile back</p>
            <img src="images/candid.jpg" alt="" style="width:300px;height:300px;"/><br>
          <h2>Candid photography</h2>
          <p>Photos shot through the candid approach in all probability most realistic variety of photography and videography, once the individuals being shots are at their natural best - regardless of their emotion. Add a touch of lighting while not creating the topics aware, and you may have photographs/videos that tell over thousand words in honest details.we are able to build it a record to be cherished for a period of joy.</p>
            </div></div></div>

        <div class="service">
            <div class="serq">
              <div class="animate__animated animate__bounce">  
                <p>I always believe that the sky is the beginning of the limit</p>
            <img src="images/outdoor.jpg" alt="" style="width:300px;height:300px;"/><br>
            <h2>indoor/outdoor photoshoot</h2>
          <p>Great photography comes from that special moment when beautiful light, a unique location and dynamic composition all combine to capture and create emotion. The emotion may be the raw determination of a swimmer lunging to touch the wall,or that special feeling you have as you witness a once in a lifetime occasion. Whether photographing athletes for a specialty publication.</p>
            </div></div></div>
          <hr>
          <h2><a href="portfollio.jsp">Portfolio</a></h2>
</div>
        <div>          
            <footer class="footer text-left"> <p>Copyright &#169; 2020 Photofixstudio- All Rights Reserved.</p</footer>
       </div>
   
    </body>
 
</html>
