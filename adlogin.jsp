<%-- 
    Document   : login
    Created on : Sep 6, 2020, 7:21:50 PM
    Author     : Suba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
        <style>
            
    body{
        background-image: url("images/nature.jpg");
        width:100%;
        
     
    }
    p{
  font-size:12px;
  text-decoration: none;
  color:#ffffff;
 
  margin-left: 28%;
  font-family: 'Oswald', sans-serif;
}

h1{
  font-size:1.5em;
  color:#0091FC;
  text-align: center;
  font-family: 'Oswald', sans-serif;
}

.box{
  background:white;
  width:500px;height:150px;
  border-radius:6px;
  margin-top:15%;
  margin-left:15%;
  padding:0px 0px 70px 0px;
  border: #2980b9 4px solid; 
  opacity:0.5;
}

.aid{
  background:#ecf0f1;
  border: #ccc 1px solid;
  border-bottom: #ccc 2px solid;
  padding: 8px;
  width:250px;
  color:black;
  margin-top:10px;
  margin-bottom: 10px;
    margin-left: 20%;
  font-size:1em;
  border-radius:4px;
  align-items:  center;
}

.password{
  border-radius:4px;
  background:#ecf0f1;
  border: #ccc 1px solid;
  padding: 8px;
      margin-left: 20%;
  width:250px;
  font-size:1em;
}

.btn{
  background:#0091FC;
  width:125px;
  padding-top:5px;
  padding-bottom:5px;
  color:white;
  border-radius:4px;
  border: #0091FC 1px solid;
  
  margin-top:20px;
  margin-bottom:20px;
  float:left;
  margin-left: 35%;
  font-weight:800;
  font-size:0.8em;
}

.btn:hover{
 background: white;
    color: #0091FC; 
}

    
</style>
    </head>
    <body>
        <div class="box">
<h1>Dashboard</h1>
        <form action="serve">
            <input type="text" name="uname" placeholder="admin ID" class="aid" required/>
            <input type="password" name="pass" placeholder="password" class="password" required/>
            <input type="submit" value="submit" class="btn"/>
        </form>
</div> 
<p>Are you user ?<a href="ulogin.jsp" style="color:red;">Click Here!</a></p>
    </body>
</html>
