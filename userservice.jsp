<%-- 
    Document   : service
    Created on : 6 Nov, 2020, 10:30:44 PM
    Author     : admin
--%>

<%@page import="java.security.MessageDigest"%>
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
            
 
        <% String f = "service details quack";
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
                                        <a class="login" href="booking.jsp?fsdgg=<%=hs2%><%=hs3%>&d=<%=request.getParameter("email")%>&fasvg<%=hs1%><%=hs%>&gvsdf=<%=hs3%>&uname=<%=request.getParameter("uname")%>&<%=hs2%>+<%=hs1%>&sgdgd=<%=hs%>&ln=<%=request.getParameter("ln")%>&vgdfg=book+<%=hs2%>&ph=<%=request.getParameter("ph")%>&<%=hs1%><%=hs%><%=hs3%>">Booking</a></div>
                                        
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

                     <li><a href="userhome.jsp?scsdcv=user+home+vcsvcd@<%=hs%>&email=<%=em%>&bgdfbhd=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&vfbgdx=<%=hs%>+<%=hs3%>&ln=<%=ln%>&sdvgk=<%=hs1%>+sfsf+<%=hs%>&ph=<%=ph%>&<%=hs1%><%=hs2%><%=hs3%>">HOME</a></li>
                    <li><a href="userabout.jsp?cds=user+about+sacfs@<%=hs1%>&email=<%=em%>&bhdfn=<%=hs%>+<%=hs2%>&uname=<%=uname%>&bddhdf=<%=hs1%>+<%=hs3%>&ln=<%=ln%>&fcgk=<%=hs2%>+sdfcs+<%=hs%>&ph=<%=ph%>&<%=hs2%><%=hs1%><%=hs3%>">ABOUT</a></li>
                    <li><a href="userservice.jsp?cvsdv=user+service+svsvsd@<%=hs2%>&email=<%=em%>&dhbdf=<%=hs3%>+<%=hs2%>&uname=<%=uname%>&sgbvdf=<%=hs%>+<%=hs1%>&ln=<%=ln%>&rksgf=<%=hs3%>+scscz+<%=hs%>&ph=<%=ph%>&<%=hs3%><%=hs1%><%=hs2%>">SERVICES</a></li>
                    <li><a href="userteam.jsp?svsvsv=user+team+sfsg@ssg<%=hs3%>&email=<%=em%>&dbdsbgs=<%=hs2%>+<%=hs2%>&uname=<%=uname%>&sdgbv=<%=hs%>+<%=hs3%>&ln=<%=ln%>&kxfmgj=<%=hs1%>+dsvx+<%=hs%>&ph=<%=ph%>&<%=hs2%>+<%=hs1%>+<%=hs3%>">TEAMS</a></li>
                    <li><a href="userblog.jsp?sgdbvdh=user+blog+sgs@sg<%=hs2%>sgs&email=<%=em%>&sbxdf=<%=hs%>+<%=hs2%>&uname=<%=uname%>&svgx=<%=hs1%>+<%=hs3%>&ln=<%=ln%>&sjxfj=<%=hs2%>+vsvd+<%=hs%>&ph=<%=ph%>&<%=hs1%>&<%=hs2%>&<%=hs3%>">BLOG</a></li>
                    <li><a href="usercontact.jsp?fsvs=user+contact+gss@<%=hs1%>&email=<%=em%>&sbdxf=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&sgbvs=<%=hs%>+<%=hs3%>&ln=<%=ln%>&styk=<%=hs1%>+svdxs+<%=hs%>&ph=<%=ph%>&<%=hs3%><%=hs2%><%=hs1%>">CONTACT</a></li>
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
            <img src="images/marriage2.jpg" alt="" style="width:300px;height:300px;"/><br>
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
            <img src="images/old.jpg" alt="" style="width:300px;height:300px;"/><br>
          <h2>Candid photography</h2>
          <p>Photos shot through the candid approach in all probability most realistic variety of photography and videography, once the individuals being shots are at their natural best - regardless of their emotion. Add a touch of lighting while not creating the topics aware, and you may have photographs/videos that tell over thousand words in honest details.we are able to build it a record to be cherished for a period of joy.</p>
            </div></div></div>

        <div class="service">
            <div class="serq">
              <div class="animate__animated animate__bounce">  
                <p>I always believe that the sky is the beginning of the limit</p>
            <img src="images/outdoor 2.jpg" alt="" style="width:300px;height:300px;"/><br>
            <h2>indoor/outdoor photoshoot</h2>
          <p>Great photography comes from that special moment when beautiful light, a unique location and dynamic composition all combine to capture and create emotion. The emotion may be the raw determination of a swimmer lunging to touch the wall,or that special feeling you have as you witness a once in a lifetime occasion. Whether photographing athletes for a specialty publication.</p>
            </div></div></div>
</div>
      <hr>
          <h2><a href="portfollio.jsp">Portfolio</a></h2>
        <div>          
            <footer class="footer text-left"> <p>Copyright &#169; 2020 Photofixstudio- All Rights Reserved.</p</footer>
       </div>
 
    </body>
 
</html>
