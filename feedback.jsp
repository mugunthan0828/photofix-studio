<%-- 
    Document   : clientfeedback
    Created on : 28 Oct, 2020, 12:41:23 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <style>
            body{
                display: contents;
                margin: 0%;
                marign-top:0%;
                margin-bottom: 0%;
                margin-right: 0%;
                margin-left: 0%;
        font-family: 'Roboto Mono', monospace;
              font-size: 20px;
           
          
            }  
 .form-box {
     margin-left: 20%;
     margin-right: 20%;
    padding-bottom: 2%;
    border: 1px solid white;
    border-radius: 5%;
    background-image: url("images/Aerial.jpg");
    font-family: 'Work Sans', sans-serif;
    box-shadow: 2px 2px 10px 0px rgba(50, 50, 50, 0.5);
   
}
h1{
    color:aqua;
}

/*inputs styling*/
 .form-control, .form-control:focus {
    border-radius: 2px !important;
    box-shadow: none;
}
/*button styling*/

 .btn-form {
    border-radius:2%;
    border-color: burlywood;
    background-size: 2px;
    transition: all .25s ease-in;
}
.btn-form:hover, .btn-form:active {
    border-radius:2%;
    size: 5%;
    border-color: #1c1f28;
   background-color:aqua;
}

#videoBG {
    position:absolute;
    z-index: -1;
    width:100%;
   }
   .btn{  
font-size: 25px;
border-radius: 5px;
background-color: whitesmoke;
} 
    </style>
  
    </head>
    <body>
       <video id="videoBG" autoplay muted loop>
    <source src="images/Aerial.mp4" type="video/mp4">
</video>
        <center>  <H1> A penny for your thoughts? </H1></center>
<HR>
<BR>
    <center>
            <div class="form-box col-sm-7">

<FORM ACTION="feedback">
    <center> <h3>FEEDBACK FORM</h3></center>
        <hr>
        <center>  <p class="margin-bottom">Your comments highly appreciated</p></center>
         <div class="form-group col-md-6"><b>Name:</b>
             <INPUT TYPE="TEXT" SIZE="25" NAME="name" required=>
         </div>
<br>
    <div class="form-group col-md-8"><b>Email id:</b>
        <INPUT TYPE="TEXT" SIZE="25" MAXLENGTH="40" NAME="email" required>
    </div>
    <br>
     <div class="form-group col-md-8">
    <B>What would you like us to improve on?:</B>
    <TEXTAREA ROWS="6" COLS="40" WRAP="PHYSICAL" Name="suggestion" placeholder="Enter your message" required></TEXTAREA>
     </div>
    <br>
    <div class="form-group col-md-8">
    <B>How did you find out about us?</B> 
    <SELECT NAME="findus" SIZE="1">
        <OPTION VALUE = "Website" SELECTED>Another Website</OPTION>
        <OPTION VALUE = "search engine">A search engine</OPTION>
        <OPTION VALUE = "friend">A friend told you</OPTION>
        <OPTION VALUE = "email">From an email</OPTION>
        <OPTION VALUE = "unlisted">Another way not listed here</OPTION>
        </SELECT>
    </div>
    <br>
    <div class="form-group col-md-8">
    <B>How would you rate our service:</B> 
    <INPUT TYPE="radio" NAME = "rating" VALUE = "Excellent"> Excellent &#128513
    <INPUT TYPE="radio" NAME = "rating" VALUE = "Good"> Good &#128522
    <INPUT TYPE="radio" NAME = "rating" VALUE = "Average" CHECKED> Average &#128524
    <INPUT TYPE="radio" NAME = "rating" VALUE = "Poor"> Poor &#128530
    </div>
    <br>
   
    
    <div class="form-group col-md-8">
    <B>Would you suggest us to a friend?</B>
     <INPUT TYPE="radio" NAME = "recommend" VALUE = "yes"> yes
    <INPUT TYPE="radio" NAME = "recommend" VALUE = "no"> no
    <INPUT TYPE="radio" NAME = "recommend" VALUE = "maybe"> maybe
    </div>
    <br>
     <center>   <div class="form-group col-md-12">
     <INPUT TYPE="SUBMIT" VALUE="Send feedback" ALIGN="MIDDLE">
    <INPUT TYPE="RESET" VALUE="reset" ALIGN="MIDDLE"> 
         </div></center>

</FORM
    </center>
</BODY>
</html>
