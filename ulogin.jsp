<%-- 
    Document   : ulogin
    Created on : Sep 20, 2020, 6:36:03 PM
    Author     : Suba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<title>sign in</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
    body {
	color: #fff;
	background: black;
	font-family: 'Roboto', sans-serif;
}
.form-control {
	height: 40px;
	box-shadow: none;
	color: #969fa4;
}
.form-control:focus {
	border-color: #5cb85c;
}
.form-control, .btn {        
	border-radius: 3px;
        
}
.btn-success{
    background-color: black;
    color:white;
    border-color: black;
}
.login-form {
	width: 450px;
	margin: 0 auto;
	padding: 30px 0;
  	font-size: 15px;
}
.login-form h2 {
	color: #636363;
	margin: 0 0 15px;
	position: relative;
	text-align: center;
}
.login-form h2:before, .login-form h2:after {
	content: "";
	height: 2px;
	width: 30%;
	background: #d4d4d4;
	position: absolute;
	top: 50%;
	z-index: 2;
}	
.login-form h2:before {
	left: 0;
}
.login-form h2:after {
	right: 0;
}
.login-form .hint-text {
	color: #999;
	margin-bottom: 30px;
	text-align: center;
}
.login-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #f2f3f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.login-form .form-group {
	margin-bottom: 20px;
}
.login-form input[type="checkbox"] {
	margin-top: 3px;
}
.login-form .btn {        
	font-size: 16px;
	font-weight: bold;		
	min-width: 140px;
	outline: none !important;
}
.login-form .row div:first-child {
	padding-right: 10px;
}
.login-form .row div:last-child {
	padding-left: 10px;
}    	
.login-form a {
	color: #fff;
	text-decoration: underline;
}
.login-form a:hover {
	text-decoration: none;
}
.login-form form a {
	color: black;
	text-decoration: none;
}	
.login-form form a:hover {
	text-decoration: underline;
} 
/* Style the navigation menu */
.navbar {
  width: 100%;
  background-color: #555;
  overflow: auto;
}

/* Navigation links */
.navbar a {
  float: left;
  padding: 5px;
  color: white;
  text-decoration: none;
  font-size: 17px;
  width: 25%; 
  text-align: center; 
}


.navbar a:hover {
  background-color: #000;
}


.navbar  {
  background-color: #000;
}


@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
    width: 100%;
    text-align: left; 
  }
}

    
    

</style>
</head>
<body>
<div class="login-form">
    <form action="logserve" method="post">
        <h2>Login</h2>
                <div class="form-group">
        	<input type="email" class="form-control" name="uname" placeholder="Email" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="pass" placeholder="Password" required="required">
        </div>
                <div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Login</button>
        </div>
    </form>
	<div class="text-center">Create an account: <a href="register.jsp">Sign up</a>
            <div class="text-center"><a href="userac.jsp">Forgot Password?</a>
        </div><div>
            <div class="navbar">
  <a href="homepage.jsp">Home</a>
  <a href="contactus.jsp">Contact</a>
</div>
        </div>
</div>
   
    </body>
</html>
