<%-- 
    Document   : employchangepass
    Created on : 7 Nov, 2020, 5:27:59 AM
    Author     : HOME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           

html {
  height: 100%;
}
h3{color: silver;}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#8C489F, #443266);
}

.em-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.em-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.em-box .employ-box {
  position: relative;
}

.em-box .employ-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.em-box .employ-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.em-box .employ-box input:focus ~ label,
.em-box .employ-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}
h2{
    color:#C3C3E5;
}    

.button {
  width: 150px;
  text-align: center;
  color: #000;
  text-transform: uppercase;
  font-weight: 600;
  margin-left: 30px;
  margin-bottom: 30px;
  cursor: pointer;
  display: inline-block;
    padding: 20px;
  border-radius: 2em;
}

.button-2 {
  color: #fff;
  border: 3px solid #410056;
  background-image: -webkit-linear-gradient(30deg, #c54b8c 50%, transparent 50%);
  background-image: linear-gradient(30deg, #c54b8c 50%, transparent 50%);
  background-size: 500px;
  background-repeat: repeat;
  background-position: 0%;
  -webkit-transition: background 300ms ease-in-out;
  transition: background 300ms ease-in-out;
}
.button-2:hover {
    border: 3px solid #EE4C7C;
  background-position: 100%;
  background-color: black;
  color: #9A1750;
}
        </style>
        <script>
    function passvalid(){
          var p = document.getElementById("pass").value;
          var cp = document.getElementById("cp").value;  
          if(cp==p){
              return true;
          }
          else{
              document.getElementById("cpm").innerHTML = "Password mismatch";
              return false;
          }
    }
    </script>
    </head>
    <body>
        <div class="em-box">
        <h3>Your Account: <%= request.getParameter("em")%></h3>
        <p id="cpm"></p>
        <form action="employchangepass">
            <input type="hidden" name="n" placeholder="Your email" value="<%= request.getParameter("em")%>"/>
            <div class="employ-box">
                <input type="text" id="pass" name="cpass" required/>
                <label>Password</label>
            </div>
            <div class="employ-box">
                <input type="password" id="cp" name="pass" required/>
                <label>Confirm Password</label>
            </div>
            <center><input type="submit" class="button button-2" value="change" onclick="return passvalid()"></center>
        </form
        </div>
    </body>
</html>
