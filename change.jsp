<%-- 
    Document   : change
    Created on : 7 Nov, 2020, 4:59:19 AM
    Author     : HOME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
       <style>
html {
  height: 100%;
}
h3,p{color: silver;}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#141e30, #243b55);
}

.pass{
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

.pass h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.pass .user-box {
  position: relative;
}

.pass .user-box input {
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
.pass .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.pass .user-box input:focus ~ label,
.pass .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.pass form .a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px;
   background-color: black;
}

.pass .a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
  
}
        </style>
<script>
    function passvalid(){
          var p = document.getElementById("p").value;
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
        
        <div class="pass">
            <h2>Change Password</h2>
            <h3>Your Email: <%= request.getParameter("em")%></h3>
             <p id="cpm"></p>
             <form action="change" method="post" onsubmit="return passvalid()">
             <div class="user-box">
            <input type="hidden" name="n" value="<%= request.getParameter("em")%>" />
             </div>
              <div class="user-box">
                  <input type="text" id="p" name="pw"  required/>
             <label>New Password</label>
            </div>
             <div class="user-box">
                 <input type="password" id="cp" name="pass" required/>
            <label>Confirm Password</label>
             </div>
             <input type="submit" class="a" value="change">
        </form>
        </div>
         
    </body>
</html>
