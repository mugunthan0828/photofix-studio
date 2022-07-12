
<%@page import="java.security.MessageDigest"%>
<%-- 
    Document   : homepage
    Created on : Sep 6, 2020, 7:21:14 PM
    Author     : Suba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Oleo+Script:wght@700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
      <style>
          .head h1{
            font-size: 36px;
            text-align: center;
            font-family: Oleo Script,Roboto,Helvetica,Arial,sans-serif;
            margin-top: 20px;
    margin-bottom: 2px;
        }
        .linestyle{
            width: 100%;
            height:100%;
            font-size: 16px;
            text-align: center;
            font-family: 'Montserrat', sans-serif;
      
}
     
        
.col-sm-4{
    width: 25px;
    height: 300px;
    padding: 10px;
  
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

  margin-bottom: 0px;
  margin-top: 0px;
}

* {
  box-sizing: border-box;
}
.img-circle{
    border-radius: 50%;
    margin-left: 50%;
}
.btn-primary {
       color:black;
    background-color: white;
    
}

.dropdown-menu>li>a {
    display: block;
    margin-top: 3rem;
    clear: both;
    font-weight: 400;
    line-height: 1.42857143;
    color: #f5f5f5;
    white-space: nowrap;}
.dropdown-menu {
    
    top: 100%;
  /*    left: 84%;*/
/*    float: right;*/

margin-left: 80%;

  
    font-size: 14px;
    text-align:left;
    list-style: none;
    background-color: #000;
    color: white;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
}
.btn-primary.active, .btn-primary:active, .open>.dropdown-toggle.btn-primary {
    color: #fff;
    background-color: #080808;
    background-image: none;
    border-color: #080808;
}
btn-primary.active.focus, .btn-primary.active:focus, .btn-primary.active:hover, .btn-primary:active.focus, .btn-primary:active:focus, .btn-primary:active:hover, .open>.dropdown-toggle.btn-primary.focus, .open>.dropdown-toggle.btn-primary:focus, .open>.dropdown-toggle.btn-primary:hover {
    color: #fff;
    background-color: #080808;
    border-color: #080808;
}
      </style>
    </head>
    
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        
        <% String f = "user details quack";
           String f1="photographer and videographer booking";
           String f2= "98756575543 7988686568";
          String f3=" bngfh@gjh.com ghhyj@gnhgf.com";
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
                                        <div class="email"><i class="fa fa-envelope"></i><a href="mailto:info@photofix.org">info@photofix.org</a>
                                        </div>
    
                                        
                                       
                                    </div>
                                </div>
                            </aside><br><aside>
                        <div  class="dropdown"><a href="#" class="dropdown-toggle user" data-toggle="dropdown">
                                <img src="https://niittrainingprdcdn.azureedge.net/Images/profile_img.png" alt="Bill" class="img-circle" width="40" />
                                <span>Hi ${uname}</span>
                              </a>
                                <ul  class="dropdown-menu" role="menu" >
                                    <li><a href="editprofile.jsp?wacfa&cacv=<%=hs%><%=hs3%>&fn=${uname}&svv=<%=hs2%><%=hs1%>&ln=${ln}&2rcw252t<%=hs3%>&<%=hs%>1345<%=hs2%>&ph=${ph}&<%=hs1%><%=hs2%>" rel="nofollow">EDIT PROFILE</a></li>
                                 <li><a href="changeac.jsp?swWGS=<%=hs3%>@<%=hs2%>&124e3ef@14eaw&em=${email}&rfqw@edgsb&scscf=<%=hs1%>@<%=hs%>&nyrranm" rel="nofollow">CHANGE ACCOUNT</a></li>
                                 <li><a href="change.jsp?adeg=afG=sdv=<%=hs1%>@<%=hs%>&<%=hs1%>@<%=hs2%>&em=${email}&<%=hs%>@<%=hs3%>&swWGS=<%=hs3%>@<%=hs2%>&dbbbh24sgr64" rel="nofollow">CHANGE PASSWORD </a></li>
                                 <li><a href="booking.jsp?scdvs=<%=hs3%>@<%=hs1%>&d=${email}&<%=hs2%>@<%=hs%>&vfg=<%=hs1%>&uname=${uname}&asvca=<%=hs%><%=hs3%>&ln=${ln}&gervg=<%=hs1%><%=hs2%>&ph=${ph}&<%=hs%><%=hs1%><%=hs2%>" rel="nofollow">BOOKING</a></li>
                                 <li><a href="feedback.jsp?wfrdes=<%=hs%>&<%=hs1%>&<%=hs2%>&<%=hs3%>" rel="nofollow">FEEDBACK</a></li>
                                  <li><a href="homepage.jsp" rel="nofollow">LOGOUT</a></li>
                                </ul>
                        </div></aside>
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
                <ul class="nav navbar-nav navbar-right"style="margin-top:3rem;"> 
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

                    <li><a href="userhome.jsp?fnn=<%=hs1%>&uiop0855988=<%=hs3%>&email=${email}&quackmeowruffruff=<%=hs2%>&lnn=<%=hs%>&dftyhi*&f=<%=hs3%>&uname=${uname}&photo&video&p=<%=hs1%>&unam&v&u=<%=hs%>&ln=${ln}&q&us=<%=hs2%>&ph=${ph}&vgsgbs=<%=hs3%>">HOME</a></li>
                    <li><a href="userabout.jsp?fghfgbcxdsdsf=<%=hs3%>&hfhxsdrtw4oiu7rew&<%=hs%>&email=${email}&ghvhyvfyurtycd=<%=hs1%>&<%=hs2%>&uname=${uname}&dgjvkvkgh=<%=hs%>&<%=hs3%>&afvghb&ln=${ln}&<%=hs2%>vsb<%=hs1%>&ph=${ph}&schscvh=<%=hs3%><%=hs%>">ABOUT</a></li>
                    <li><a href="userservice.jsp?macnvkdb=<%=hs2%><%=hs1%>&advnnx@dvvf@avget.com&email=${email}&egvgerbvg&<%=hs3%>sBnrnhm<%=hs%>&uname=${uname}&<%=hs1%>ndnn<%=hs%>&fsvvb=<%=hs3%>dad<%=hs2%>&ln=${ln}&ascvfdb<%=hs%>fvvd<%=hs2%>1232433&ph=${ph}&<%=hs%>214acsv<%=hs1%>2e4dvg<%=hs%>vjxsj<%=hs3%>">SERVICES</a></li>
                    <li><a href="userteam.jsp?fWECV&f353tesf@sdfg&<%=hs%>@<%=hs1%>&email=${email}&hbe2gfev=<%=hs2%>dssv2rf<%=hs3%>&uname=${uname}&unam=Hsdvgkenhbjr&<%=hs%>&ln=${ln}&<%=hs1%><%=hs2%>&24235rfv&ph=${ph}&235r4ygbae562&<%=hs3%>>&<%=hs3%>">TEAMS</a></li>
                    <li><a href="userblog.jsp?ferhgaeh&bbe@ws@fawjv@fav<%=hs2%><%=hs3%>&email=${email}&SVbsf356bd<%=hs1%>@<%=hs%>&uname=${uname}&asdch&JNdjn=<%=hs1%>&ln=${ln}&vsh245mvnxfjk5<%=hs2%>1234<%=hs3%>&ph=${ph}&234wf562fr&14<%=hs1%><%=hs%>">BLOG</a></li>
                    <li><a href="usercontact.jsp?dhrshjrs=<%=hs3%>&herh$@da@edq.com&<%=hs%>&email=${email}&<%=hs1%>@<%=hs2%>$svdsv&uname=${uname}&<%=hs%>134rdqw25<%=hs3%>&123eqd131134e&ln=${ln}&234rfe45=<%=hs1%><%=hs%>&ph=${ph}&12edq3rfc<%=hs3%><%=hs2%>">CONTACT</a></li>
                </ul>
            </div>
        </div>
       </nav>
       <div class="jumbotron text-center">
  <h1>“Taking an image, freezing a moment, reveals how rich reality truly is.”</h1>  
       </div>
        <div  class="head h1"> 
            <h1>A Classic Photoshoot ,Wedding&amp;Event photography and videography company </h1>
         <p class="linestyle"><span>Real moments. Pure emotions. Timeless memories. Absolutely You!</span></p>
        </div>
        <br><br>
       
        
         
<div>          
            <footer class="footer text-left"> <p>Copyright &#169; 2020 Photofixstudio- All Rights Reserved.</p</footer>
       </div>
   
   

    </body>


</html>
