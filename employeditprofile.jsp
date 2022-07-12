<%-- 
    Document   : employeditprofile
    Created on : 7 Nov, 2020, 5:28:18 AM
    Author     : HOME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
 
   
$("#img").hide();
  $(".btn").click(function(){
    $("#img").toggle();
   
  });
});
 
</script>

<style>
.btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}

body{
    background-image:linear-gradient(45deg , pink 50% , palevioletred 50%);
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}

input{
    width:220px;
    border-radius: 10px;
    height: 40px;
    
}
input:hover{
    background-color:#23a6d5;
    width: 300px;
}

</style>
          </head>
    <body>
        <center> <h2>Edit Profile</h2></center>
        <div style="background-color:whitesmoke; width:400px; border:2px black solid; height: 720px; padding-left:220px; margin-left:350px; border-radius: 30px;">
        <img style="border-radius:50%; margin-top: 50px;" src="emimageservlet?id=<%= request.getParameter("d")%>" width="200px" height="200px">
      <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              SELECT * from employeedetails where employeeid='<%= request.getParameter("em")%>'
         </sql:query>

                  
             <c:forEach var = "row" items = "${res.rows}">
             <button class="btn"><i class="fa fa-image"></i></button>
             <div id="img">
             <form action="emeditimage">
            <input type="hidden" name="id" value="${row.employeeno}">
             <input type="hidden" name="eid" value="${row.employeeid}">
             <input type="file" id="myFile" name="eimg" required>
             <input type="submit" value="upload">
             </form>
             </div>
              <form action="employeditprofile">
             <input type="hidden" name="id" value="${row.employeeno}">
             <input type="hidden" name="eid" value="${row.employeeid}">
             <label>Employee Name:</label><br>
             <input type="text" name="ename" placeholder="name" value="${row.employeename}">
            <br><br>
            <lable>Employee Age:</lable><br>
            <input type="number" min="15" name="eage" placeholder="age" value="${row.age}">
            <br><br>
            <label> Address:</label><br>
           <input type="text" name="eaddress" placeholder="address" value="${row.employeeaddress }">
            <br><br>
            <lable>Phone Number:</lable><br>
             <input type="text" name="ephno" placeholder="phone number" value="${row.employeephonenumber}">
            <br><br>
            <label>  Employee Email:</label><br>
               <input type="text" name="eemail" placeholder="email" value="${row.employeepersonalemail}">
           <br><br>
            <input type="submit" value="save">
            </c:forEach>
        </form>
        </div>
    </body>
</html>
