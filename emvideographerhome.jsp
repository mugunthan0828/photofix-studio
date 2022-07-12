<%-- 
    Document   : employhome
    Created on : 6 Nov, 2020, 2:36:01 AM
    Author     : HOME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Stencil+Display:wght@900&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
 
 <title>Home</title>
        <style>
            body{
                background-color:wheat;
                margin-left:2%;
                margin-right:2%;
                color:brown;
                
            }
            a{
                color:brown;
                text-decoration: none;
               font-family: 'Big Shoulders Stencil Display', cursive;
            }
            p{
                text-align: left;
                margin:0%;
            }
            h1{
                color: brown;
                text-align: center; 
            margin:0;
             margin-block-start: 0px;
    margin-block-end: 0px;
    margin-inline-start: 0px;
    margin-inline-end: 0px;}
          
   
            .header {
	font-family: 'Big Shoulders Stencil Display', cursive;
	font-size: 50px;
	font-weight:  100;
	letter-spacing: 2px;
	text-align: center;
	color: wheat;
	background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	-webkit-animation: hue 10s infinite linear;
}

@-webkit-keyframes hue {
  from {
    -webkit-filter: hue-rotate(0deg);
  }
  to {
    -webkit-filter: hue-rotate(-360deg);
  }
}

a+a {
  margin-left: 10px;
}

.dropdown-menu>li>a {
    display: block;

    clear: both;
    font-weight: 400;
    line-height: 1.42857143;
    color: #f5f5f5;
    white-space: nowrap;}
.dropdown-menu {
    
    top: 100%;
    left: 84%;
    float: right;


  
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
.aligncenter {
    text-align: center;
    margin-top: -4%;
}

        </style>
    </head>
    <body>
        <div align="right">
           <div  class="dropdown">
               <img src="https://yanado.com/blog/wp-content/uploads/2015/02/User-Role-Administrator-icon.png" alt="Bill" class="img-circle" width="40" />
                <a class="dropdown-toggle user" data-toggle="dropdown" style="margin-right:1%;">
                    <span>hi ${ename}</span>
                    </a> 
                         <ul  class="dropdown-menu" role="menu" >
                                    <li><a href="employeditprofile.jsp?em=${d}&d=${id}" rel="nofollow">EDIT PROFILE</a></li>
                                    <li><a href="employchangepass.jsp?em=${d}" rel="nofollow">CHANGE PASSWORD </a></li>
                                    <li><a href="homepage.jsp" rel="nofollow">LOGOUT</a></li>
                </ul></div>
        </div>
        <p class="aligncenter">
            <img src="images/logodif.png" alt="centered image" height="200"/>
 </p>
                    <hr style="border-color: brown;">
        <img src="emimageservlet?id=${id}" width="200px" height="200px">
         
        <a href="vcurrentwork.jsp?d=<%= request.getParameter("f")%>&d1=<%= request.getParameter("f1")%>&id=${d}">current work</a>
        <a href="vallwork.jsp?id=${d}">all work</a>
        <jsp:include page="viewvideo.jsp">
            <jsp:param name="ed" value="${d}"></jsp:param>
        </jsp:include>
              <hr>
        <p>copyright © Photofix studio. All Right's reserved</p>
    </body>
</html>
