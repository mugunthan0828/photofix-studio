<%-- 
    Document   : editbookingdetails
    Created on : 12 Oct, 2020, 11:13:53 PM
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
        <title>Edit</title>
        <style>
            input[type=text] {
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
    background-color:#050A30;
    color:white;
    font-family: sans-serif;
    text-align:center;
    text-transform: uppercase;
}
form{
  padding: 2%;
    border: solid whitesmoke;
    border-radius: 2em;
    width:30%;
   
  
   
}
.button1 {
  background-color: #4169E1;
  color: whitesmoke;
   padding-left:1em;
       padding-right:1em;
       text-decoration: none;
       text-transform: uppercase;
  
}
        </style>
    </head>
    <body>
        <h1>Edit Booking Details</h1>
        <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              SELECT * from bookeddetails where eventno=<%= request.getParameter("id")%>
         </sql:query>
    <center>
         <form action="customer">
            <c:forEach var = "row" items = "${res.rows}">
             <input type="hidden" name="eid" value="${row.eventno}"/>
             Client Name: <input type="text" name="cname" value="${row.clientname}"/>
             Event Name:  <input type="text" name="ename" value="${row.eventname}"/><br>
             Event Date:  <input type="date" name="edate" value="${row.eventdate}"/><br><br>
             Event Time:  <input type="time" name="etime" value="${row.eventtime}"/><br><br>
             Event venue:  <input type="text" name="eloc" value="${row.eventlocation}"/>
             Event Package:<input type="text" name="epack" value="${row.eventpackage}"/>
             Additional Service:<input type="text" name="as" value="${row.additionalservice}"/>
             Event price:  <input type="text" name="eprice" value="${row.eventprice}"/>
               <input type="submit" class="button1" value="save"/>
            </c:forEach>
            </form>
    </center>
    </body>
</html>
