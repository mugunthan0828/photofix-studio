<%-- 
    Document   : portfollio
    Created on : 8 Nov, 2020, 12:31:10 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Cedarville+Cursive&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,700&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
        <title>JSP Page</title>
        <style>
            body{
                display:overflow;
                width:100%;
                background-color: white;
                margin-top: 0%;
                margin-bottom: 0%;
                margin-left: 0%;
                margin-right: 0%;
            }
            button{
                font-size:20px;
                color:white;
                background-color: black;
                font-family: 'Open Sans', sans-serif;
                
                
            }
             .container {
    padding-right: 0px;
    padding-left: 0;
    margin-right: auto;
    margin-left: auto;
    width:100%;}
             
h2{font-family: Cedarville Cursive, cursive;
font-size: 30px;
color:#581845;
text-align: center;}
        </style>
    </head>
    <body>
       <button onclick="goBack()">Go Back</button>
       <h2>wedding</h2>
       <div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
       <li data-target="#myCarousel" data-slide-to="6"></li>
        <li data-target="#myCarousel" data-slide-to="7"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/wedding/1.jpg" alt="" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/wedding/2.jpg" alt="" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images/wedding/3.jpg" alt="" style="width:100%;">
      </div>
        <div class="item">
        <img src="images/wedding/4.jpg" alt="" style="width:100%;">
      </div>
        <div class="item">
        <img src="images/wedding/5.jpg" alt="" style="width:100%;">
      </div>
        <div class="item">
        <img src="images/wedding/6.jpg" alt="" style="width:100%;">
      </div>
        <div class="item">
        <img src="images/wedding/7.jpg" alt="" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
       </div>
       
       <h2>Candid Photography</h2>
       <div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/candid/can1.jpg" alt="" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/candid/can2.jpg" alt="" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images/candid/can3.jpg" alt="" style="width:100%;">
      </div>
        <div class="item">
        <img src="images/candid/can4.jpg" alt="" style="width:100%;">
      </div>
        <div class="item">
        <img src="images/candid/can5.jpg" alt="" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
   <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
       <h2>Indoor / Outdoor Photography</h2>
       <div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/indoor outdoor/i1.jpg" alt="" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/indoor outdoor/i2.jpg" alt="" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images/indoor outdoor/i3.jpg" alt="" style="width:100%;">
      </div>
        <div class="item">
        <img src="images/indoor outdoor/04.jpg" alt="" style="width:100%;">
      </div>
        <div class="item">
        <img src="images/indoor outdoor/05.jpg" alt="" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
       
    </body>
    <script>
function goBack() {
  window.history.back();
}
</script>
</html>
