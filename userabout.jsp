<%-- 
    Document   : aboutus
    Created on : 7 Nov, 2020, 9:09:07 AM
    Author     : admin
--%>

<%@page import="java.security.MessageDigest"%>
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
        
         
        <% String f = "about us quack";
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

        <div>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div id="toolbar" class="toolbar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="toolbar-container">
                            

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
                                       <a class="login" href="homepage.jsp">Logout</a>
                                        <a class="login" href="booking.jsp?sfsgb=<%=hs%><%=hs3%>&d=<%=request.getParameter("email")%>&xcsvb<%=hs1%><%=hs2%>&acdav=<%=hs3%>&uname=<%=request.getParameter("uname")%>&<%=hs2%><%=hs%>&vvbvsd=<%=hs1%>&ln=<%=request.getParameter("ln")%>&ndbg=hello+<%=hs%>&ph=<%=request.getParameter("ph")%>&<%=hs1%><%=hs2%><%=hs3%>">Booking</a></div>
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
                    <% 
String uname=request.getParameter("uname");
String em=request.getParameter("email");
String ln=request.getParameter("ln");
String ph=request.getParameter("ph");
session.setAttribute("uname",uname); 
session.setAttribute("email",em);
session.setAttribute("ln",ln);
session.setAttribute("ph",ph);
%> 
                    <li><a href="userhome.jsp?dafds=user+home+acdsv@<%=hs%>&email=<%=em%>&svsv=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&ergg=<%=hs%>+<%=hs3%>&ln=<%=ln%>&vassv=<%=hs1%>+vsvsgf+<%=hs%>&ph=<%=ph%>&<%=hs2%><%=hs1%><%=hs3%>">Home</a></li>
                    <li><a href="userabout.jsp?fswg=user+about+us+svghd@<%=hs3%>&email=<%=em%>&bdfb=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&dbfbn=<%=hs%>+<%=hs3%>&ln=<%=ln%>&nfnfj=<%=hs2%>+gnfngh+<%=hs1%>&ph=<%=ph%>&<%=hs3%><%=hs%><%=hs2%>">ABOUT</a></li>
                    <li><a href="userservice.jsp?bgfnghnm=user+service+daf@<%=hs1%>&email=<%=em%>&davfdg=<%=hs%>+<%=hs2%>&uname=<%=uname%>&vsbbd=<%=hs3%>+<%=hs3%>&ln=<%=ln%>&fnmgg=<%=hs1%>+nfnmj+<%=hs%>&ph=<%=ph%>&<%=hs1%><%=hs%><%=hs2%>">SERVICES</a></li>
                    <li><a href="userteams.jsp?avsdvdf=user+teams+fdszg@<%=hs2%>&email=<%=em%>&dfgd=<%=hs3%>+<%=hs2%>&uname=<%=uname%>&sgdgd=<%=hs1%>+<%=hs1%>&ln=<%=ln%>&fsewgfs=<%=hs1%>+vvsgf+<%=hs%>&ph=<%=ph%>&<%=hs%><%=hs1%><%=hs3%>">TEAMS</a></li>
                    <li><a href="userblog.jsp?bdhrh=user+blog+aggtg@<%=hs1%>&email=<%=em%>&rhhd=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&dghfh=<%=hs%>+<%=hs3%>&ln=<%=ln%>&sgsg=<%=hs1%>+vsvs+<%=hs%>&ph=<%=ph%>&<%=hs2%><%=hs2%><%=hs3%>">BLOG</a></li>
                    <li><a href="usercontact.jsp?gehg=user+contact+svb@<%=hs3%><%=hs%>&email=<%=em%>&gdhrr=<%=hs2%>+<%=hs2%>&uname=<%=uname%>&dhfh=<%=hs3%>+<%=hs3%>&ln=<%=ln%>&ssg=<%=hs1%>+vssgf+<%=hs%>&ph=<%=ph%>&<%=hs2%><%=hs1%><%=hs3%>">CONTACT</a></li>
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
