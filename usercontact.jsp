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
    <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>JSP Page</title>
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
        </style>
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

         
        <% String f = "contact us quack";
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
                                        <a class="login" href="booking.jsp?afsdgv=<%=hs2%><%=hs3%>&d=<%=request.getParameter("email")%>&xbvcb<%=hs1%><%=hs%>&avgfsdb=<%=hs3%>+<%=hs1%>&uname=<%=request.getParameter("uname")%>&<%=hs2%><%=hs%>&vvbvsd=<%=hs1%>+<%=hs3%>&ln=<%=request.getParameter("ln")%>&ndbg=book+<%=hs%>&ph=<%=request.getParameter("ph")%>&<%=hs2%><%=hs3%><%=hs1%>">Booking</a></div>
                                        
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

                    <li><a href="userhome.jsp?sadcs=user+home+vcsvcd@<%=hs%>&email=<%=em%>&dgxb=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&vsdv=<%=hs%>+<%=hs3%>&ln=<%=ln%>&asvs=<%=hs1%>+sfsf+<%=hs%>&ph=<%=ph%>&<%=hs1%><%=hs2%><%=hs3%>">HOME</a></li>
                    <li><a href="userabout.jsp?daf=user+about+sacfs@<%=hs1%>&email=<%=em%>&dbgv=<%=hs%>+<%=hs2%>&uname=<%=uname%>&svdfs=<%=hs1%>+<%=hs3%>&ln=<%=ln%>&sdcv=<%=hs2%>+sdfcs+<%=hs%>&ph=<%=ph%>&<%=hs2%><%=hs1%><%=hs3%>">ABOUT</a></li>
                    <li><a href="userservice.jsp?dfds=user+service+svsvsd@<%=hs2%>&email=<%=em%>&dbsv=<%=hs3%>+<%=hs2%>&uname=<%=uname%>&sdfcs=<%=hs%>+<%=hs1%>&ln=<%=ln%>&vxv=<%=hs3%>+scscz+<%=hs%>&ph=<%=ph%>&<%=hs3%><%=hs1%><%=hs2%>">SERVICES</a></li>
                    <li><a href="userteam.jsp?dafs=user+team+sfsg@ssg<%=hs3%>&email=<%=em%>&sgvs=<%=hs2%>+<%=hs2%>&uname=<%=uname%>&svxv=<%=hs%>+<%=hs3%>&ln=<%=ln%>&dfbs=<%=hs1%>+dsvx+<%=hs%>&ph=<%=ph%>&<%=hs2%>+<%=hs1%>+<%=hs3%>">TEAMS</a></li>
                    <li><a href="userblog.jsp?dafd=user+blog+sgs@sg<%=hs2%>sgs&email=<%=em%>&gsdv=<%=hs%>+<%=hs2%>&uname=<%=uname%>&vsv=<%=hs1%>+<%=hs3%>&ln=<%=ln%>&sbsbv=<%=hs2%>+vsvd+<%=hs%>&ph=<%=ph%>&<%=hs1%>&<%=hs2%>&<%=hs3%>">BLOG</a></li>
                    <li><a href="usercontact.jsp?afds=user+contact+gss@<%=hs1%>&email=<%=em%>&gvsd=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&svgs=<%=hs%>+<%=hs3%>&ln=<%=ln%>&svsv=<%=hs1%>+svdxs+<%=hs%>&ph=<%=ph%>&<%=hs3%><%=hs2%><%=hs1%>">CONTACT</a></li>
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
        <form action="usercontactus" method="post">
            <input type="hidden" name="un" value="<%=uname%>">
            <input type="hidden" name="em" value="<%=em%>">
            <input type="hidden" name="ln" value="<%=ln%>">
            <input type="hidden" name="ph" value="<%=ph%>">
       <label for="fname">Name</label>
       <input type="text" id="fname" name="name" placeholder="Your name.." required>
      <label for="eid">Email-Id</label>
      <input type="text" id="eid" name="email" placeholder="Your email-id.." required>
        <label for="subject">Subject</label>
        <textarea id="subject" name="comment" placeholder="Write something.." style="height:170px" required></textarea>
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
   
    </body>
</html>
