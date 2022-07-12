<%-- 
    Document   : contactus
    Created on : 7 Nov, 2020, 2:28:10 PM
    Author     : admin
--%>

<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/contact.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Oleo+Script:wght@700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <script src="javascript/jquery.bpopup.min.js" type="text/javascript"></script>
     
        <style>
             body {
    display: block;
    margin: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    margin-left: 0px;
}
.address{
   text-align:center;
   font-size:15px;
   font-style:italic;
   font-family: 'Goldman', cursive;
   background-color: black;
   color:white;
 border-radius: 20%
}
#popup_this {
    top: 50%;
    left: 50%;
    text-align:center;
    margin-top: -50px;
    margin-left: -100px;
    position: fixed;
    background: buttonface;
    padding: 30px;
    border-radius: 5px;
    color:grey;
}




.check{
      transform:  scale(5);
      color: slateblue;
      padding-bottom: .5rem;
  
}
.btn{
    background-color: black;
    color:white;
}
.btn:hover{
    background-color: white;
    color:black;
}
        </style>
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        <% String f = "user contact us quack";
           String f1="photographer and videographer booking";
           String f2= "98756575543 and 7988686568";
          String f3=" bngfh@gjh.com and ghhyj@gnhgf.com";
MessageDigest  crypt= MessageDigest.getInstance("MD5");
crypt.update(f.getBytes());
MessageDigest crypt2 = MessageDigest.getInstance("MD5");
crypt2.update(f1.getBytes());
MessageDigest crypt3 = MessageDigest.getInstance("MD5");
crypt3.update(f2.getBytes());
MessageDigest crypt4 = MessageDigest.getInstance("MD5");
crypt3.update(f3.getBytes());
byte[] c = crypt.digest();
byte[] c2 = crypt2.digest();
byte[] c3 = crypt3.digest();
byte[] c4 = crypt4.digest();

StringBuffer en = new StringBuffer();

for (int i = 0; i < c.length; i++) {
    f = Integer.toHexString(0xFF & c[i]);

    if (f.length() < 2) {
        f= "0" + f;
    }

    en.append(f);
}
String hs=en.toString();

StringBuffer en2 = new StringBuffer();

for (int i = 0; i < c2.length; i++) {
    f1 = Integer.toHexString(0xFF & c2[i]);

    if (f1.length() < 2) {
        f1= "0" + f1;
    }
;
    en2.append(f1);
}
String hs1=en2.toString();


StringBuffer en3 = new StringBuffer();

for (int i = 0; i < c3.length; i++) {
    f2 = Integer.toHexString(0xFF & c3[i]);

    if (f2.length() < 2) {
        f2= "0" + f2;
    }
;
    en3.append(f2);
}
String hs2=en3.toString();

StringBuffer en4 = new StringBuffer();

for (int i = 0; i < c4.length; i++) {
    f3 = Integer.toHexString(0xFF & c4[i]);

    if (f3.length() < 2) {
        f3= "0" + f3;
    }
;
    en4.append(f3);
}
String hs3=en4.toString();

            %>
       
<div id="popup_this">
    
      <div class='check'>
          &#10003;</div>
     <p>
    Success 
  </p>
  <p>
    We Recive Your Enquire.We Reach You Soon!.. 
  </p>
  <button type="button" class="btn" onclick="window.location.href='usercontact.jsp?svbvf=user+contactus&<%=hs1%><%=hs%><%=hs3%>&email=<%=request.getParameter("em")%>&gnxfgn=<%=hs2%>@<%=hs2%>&uname=<%=request.getParameter("un")%>&bgfngfnx&vbnh=<%=hs%><%=hs1%>&ln=<%=request.getParameter("ln")%>&bzdgn&mfc&<%=hs3%><%=hs2%>&ph=<%=request.getParameter("ph")%>&<%=hs%><%=hs1%><%=hs3%>'">OK</button>
</div>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div id="toolbar" class="toolbar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="toolbar-container">
                            <a class="booking" href="booking.jsp">Booking</a>

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
                <ul class="nav navbar-nav navbar-right" style="margin-top:30px;">
                    <li><a href="userhome.jsp">Home</a></li>
                    <li><a href="userabout.jsp">ABOUT</a></li>
                    <li><a href="userservice.jsp">SERVICES</a></li>
                    <li><a href="userteam.jsp">Teams</a></li>
                    <li><a href="userblog.jsp">Blog</a></li>
                    <li><a href="usercontact.jsp">CONTACT</a></li>
                </ul>
            </div>
        </div>
       </nav>
     <div class="container-con">
  <div style="text-align:center;padding:10%10%">
    <h2 style="font-size:20px">Contact Us</h2>
 </div>
  <div class="row">
    <div class="column">
        <img src="images/logo contact.png" alt="" style="width:500px ;height:500px"/>
        
    </div>
    <div class="column">
      <form action="contactus">
        <label for="fname">Name</label>
        <input type="text" id="fname" name="name" placeholder="Your name..">
        
      <label for="eid">Email-Id</label>
        <input type="text" id="eid" name="email" placeholder="Your email-id..">
        <label for="subject">Subject</label>
        <textarea id="subject" name="comment" placeholder="Write something.." style="height:170px"></textarea>
        <input type="submit" value="Submit">
      </form>
    </div>
    
  </div>
           <div class="address">
            <h3>Looking for beautiful images that capture the occasions?</h3>
        <p>Contact us and we'll get back to you within 24 hours.</p>
                <p>LOCATION:Chennai</p>
                <p>CONTACT NO: +91 9876543210</p>
                <p>EMAIL ID:info@photofix.com</p>
        </div>
</div>
        <div>          
            <footer class="footer text-left"> <p>Copyright &#169; 2020 Photofixstudio- All Rights Reserved.</p</footer>
       </div>
   <script>
$( document ).ready(function() {
    $('#popup_this').bPopup();
});
</script>
    </body>
</html>
