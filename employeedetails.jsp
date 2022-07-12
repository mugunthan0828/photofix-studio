<%-- 
    Document   : employeedetails
    Created on : Sep 27, 2020, 6:43:02 PM
    Author     : Suba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>employee</title>
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
<style>
         input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}

input{
    background-color:#4DA8DA;
    color:white;
    border-radius: 2%;
   
}
body {
    background-color:peachpuff;
    color:black;
    font-family: sans-serif;
    text-align:center;
    text-transform: uppercase;
}
form{
  padding: 2%;
    border: solid orchid;
    border-radius: 2em;
    width:30%;
   }
   .btn{
       color:black;
       background-color: white;
       padding-left:1em;
       padding-right:1em;     
       text-decoration: none;
       text-transform: uppercase;
   }
   a {
  color:lightseagreen;
  text-decoration: none;
  text-transform: uppercase;
  background-color: white;
  color: black;
  border: 2px solid #555555;
}

a:hover {
  background-color: #555555;
  color: white;
}
</style>
    </head>
    <body>
    <center>
       <p id="cpm"></p>
             <h3>Edit Employee Details </h3>
        <a href="employee.jsp">view employeeinfo</a>
        <form action="employee" onsubmit="return passvalid()">
             <input type="text" name="ename" placeholder="employee name" required/>
            
             <input type="text" name="ed" placeholder="employee ID" required/>
         
             Image:<input type="file" name="eimg" required/>
           
            <input type="text" name="eaddress" placeholder="employee address" required/>
            
            <input type="text" name="ephno" placeholder="employee phone number" required/>
            
            <input type="text" name="eemail" placeholder="employee email" required/>
           
            <input type="text" name="edesignation" placeholder="employee designation" required/><br><br>
         
            DOB :<input type="date" name="edate" placeholder="employee date of birth" required/>
           
            DOJ :<input type="date" name="edj" placeholder="employee date of join" required/><br><br>
            Gender:
            <input type="radio" name="gender" value="male"/>male
            <input type="radio" name="gender" value="female"/>female
        
            <input type="number" min="15" name="eage" placeholder="age" required/>
          
            <input type="text" name="est" placeholder="employee status" required/>
                   
            <input type="text" name="esal" placeholder="employee salary" required/>
                       
            <input type="text" id="p" name="pass" placeholder="password" required/>
       
            <input type="password" id="cp" name="ecpass" placeholder="confirm password" required/>
            
            <input type="submit" value="save">
        </form> 
        </div>
    </center>
    </body>
</html>
