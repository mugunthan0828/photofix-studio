<%-- 
    Document   : teams
    Created on : 10 Nov, 2020, 7:08:00 PM
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
    <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>Teams</title>
        <style>
            * {
  box-sizing: border-box;
}
            body{
                background-image: url("images/background v11.png");
                    width:100%;
                    height:100%;
            }
            hr{background-color:black;}
          .row:after {
  content: "";
  display: table;
  clear: both
          }  h2{
              color:#581845;
              font-family: 'Caveat', cursive;
          }
          .title{
              color:#C70039 ;
              font-family: 'Signika', sans-serif;
          }
          p{
              font-family: 'Exo', sans-serif;
          }
          .footer{
              color:white ;
              background-color: black;
             height:40px; 
             padding-bottom: 20px;
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
      <hr>
        <h1 style="color:white;margin-top:10%; text-align: center;">Our Teams</h1>
        <hr>
        <div class="row">
  <div class="column left" style="background-color:white; margin-left:10%; margin-right:50%; border-radius: 3%; background-color: #29EBEE ;">
      <img src="images/IMG-200909-124650-697881.jpg" alt="Asmitha" style="width:100px;height:100px;">
  <h2>Asmitha Ganesh</h2>
   <p class="title">Founder, Photographer, Writer and Editor</p>
        <p> A creative person that has her way with words and specializes in nature, abstract and portrait photography.</p>
        <p>asmitha@photofixstudio.com</p>
  </div></div>
          <div class="row">
  <div class="column left" style="background-color:white; margin-left:50%; margin-right:10%; border-radius: 3%;background-color: #FFC300 ;">
      <img src="images/Screenshot_20201107-200409.png" alt="Subhashini" style="width:100px;height:100px;">
  <h2>Subhashini</h2>
   <p class="title">Ceo , Writer and Editor</p>
         <p>A fantastic writer and keen on the details of the pictures.</p>
        <p>subhashini@photofixstudio.com</p>
  </div></div>
         <div class="row">
  <div class="column left" style="background-color:white; margin-left:10%; margin-right:50%; border-radius: 3%;background-color: wheat;  ;">
      <img src="images/WhatsApp Image 2020-11-10 at 19.42.12.jpg" alt="Mugunthan" style="width:150px;height:100px;">
  <h2>Mugunthan</h2>
        <p class="title">Administrater,Photographer, Videographer and Designer</p>
        <p>An excellent photographer that specializes in fashion and event photography. He has also impeccable editing skills. </p>
        <p>mugunthan@photofixstudio.com</p>
  </div></div>
         <div class="row">
   <div class="column left" style="background-color:white; margin-left:50%; margin-right:10%; border-radius: 3%;background-color:wheat;">
      <img src="images/Screenshot_20201107-200922.png" alt="Yatish" style="width:100px;height:100px;" >
   
        <h2>Yatish Kumar</h2>
        <p class="title">Photographer and Editor</p>
        <p>An excellent photographer that specializes in fashion and event photography. He always captures the best sides of you. </p>
        <p>yatish@photofixstudio.com</p>
        
      </div>
    </div>
  </div>
    <div class="row">
    <div class="column left" style="background-color:white; margin-left:10%; margin-right:50%; border-radius: 3%;background-color: #FFC300 ;">
      <img src="images/nithin.jpg" alt="Nithin" style="width:100px;height:100px;">
    
        <h2>Nithin Kumar</h2>
        <p class="title">Photographer, Videographer and Editor</p>
        <p>An excellent photographer that specializes in fashion, product and event photography. He captures stunning pictures. </p>
        <p>nithin@photofixstudio.com</p>
        
      </div>
    </div>
  </div>
    <div class="row">
<div class="column left" style="background-color:white; margin-left:50%; margin-right:10%; border-radius: 3%;background-color:#29EBEE ;  ;">
      <img src="images/Screenshot_20201107-201129.png" alt="Pranav" style="width:100px;height:100px;">
      
        <h2>Pranav Khant</h2>
        <p class="title">Photographer and Videographer</p>
        <p>A stunning photographer that specializes in fashion and event photography. His videos will amaze you. </p>
        <p>pranav@photofixstudio.com</p>
        
      </div>
    </div>
  </div>
    <div class="row">
    <div class="column left" style="background-color:white; margin-left:10%; margin-right:50%; border-radius: 3%;background-color: #F1C40F  ;">
      <img src="images/facebook_1604759697911_6730850019990478120.jpg" alt="Sahana" style="width:100px;height:100px;">
     
        <h2>Sahana Krishnan</h2>
        <p class="title">Designer</p>
        <p>An amazing designer for any kind of events. Her designs are unreal and never seen before, very unique also. </p>
        <p>sahana@photofixstudio.com</p>
        
      </div>
    </div>
  </div>
    <div class="row">
    <div class="column left" style="background-color:white; margin-left:50%; margin-right:10%; border-radius: 3%; background-color: wheat;">
      <img src="images/facebook_1604759366027_6730848627967969710.jpg" alt="Imran" style="width:100px;height:100px;">

        <h2>Imran Roshan</h2>
        <p class="title">Photographer, Videographer and Editor</p>
        <p>An excellent photographer that specializes in fashion and event photography. He captures the best moments. </p>
        <p>imran@photofixstudio.com</p>
        
      </div>
    </div>
  </div>
    <div class="row">
    <div class="column left" style="background-color:white; margin-left:10%; margin-right:50%; border-radius: 3%;background-color: #29EBEE ;">
      <img src="images/facebook_1604759285187_6730848288900885533.jpg" alt="Akilan" style="width:100px;height:100px;">
      
        <h2>Akilan Sathiamoorthy</h2>
        <p class="title">Photographer, Videographer and Editor</p>
        <p>A surreal photographer that specializes in fashion and portrait photography. He captures pictures of a different perspective with unreal edits. </p>
        <p>akilan@photofixstudio.com</p>
        
 </div></div>
  <hr>
  <div>          
            <footer class="footer text-left"> <p>Copyright &#169; 2020 Photofixstudio- All Rights Reserved.</p</footer>
       </div>
    
    </body>
</html>
