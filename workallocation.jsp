<%-- 
    Document   : workallocation
    Created on : 4 Nov, 2020, 8:42:16 PM
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
        <title>work allocation</title>
        <style>
            table,thead,td{
                border:1px solid black;
                border-collapse: collapse;
                padding:25px;
            }
            
             body{
  
background-color: orange;
    margin:0%;
    color:black;
     font-family: 'Bebas Neue';font-size: 17px;
}
th{
padding: 5px;
    background-color: black;
    color: white;}
a {text-decoration: none;
background-color: wheat;
color:black;
border-style:double;
border-radius:10px;

}
button{
    text-decoration: none;
background-color: wheat;
color:black;
border-style:double;
border-radius:10px;

}
        </style>
    </head>
    <body>
        <a href="assigneddetails.jsp">assigned details</a>
                    <p style="text-align:center;">Work Allocation</p>

       <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              select bookeddetails.*,clientdetails.PHONENUMBER,clientdetails.EMAIL from bookeddetails INNER JOIN clientdetails ON clientdetails.CLIENTID=bookeddetails.CLIENTID order by status desc
         </sql:query>
         
             <table>
                 <thead>
                 <tr>
                     <th>eno</th>
                     <th>event name</th>
                     <th>date</th>
                     <th>time</th>
                     <th>venue</th>
                     <th>Package</th>
                     <th>additional service</th>
                     <th>price</th>
                     <th>cno</th>
                     <th>client name</th>
                     <th>phone number</th>
                     <th>email</th>
                     <th>assigned</th>
                     <th></th>
                 </tr>
                 </thead>
                 <c:forEach var = "row" items = "${res.rows}">
                     <tbody>
                 <tr>
                     <td>${row.eventno}</td>
                     <td>${row.eventname}</td>
                     <td>${row.eventdate}</td>
                     <td>${row.eventtime}</td>
                     <td>${row.eventlocation}</td>
                     <td>${row.eventpackage}</td>
                     <td>${row.additionalservice}</td>
                     <td>${row.eventprice}</td>
                     <td>${row.clientid}</td>
                     <td>${row.clientname}</td>
                     <td>${row.phonenumber}</td>
                     <td>${row.email}</td>
                     <td>${row.status}</td>
                     <td><a href="assign.jsp?no=${row.eventno}">assign</a></td>
                 </tr>
                 </c:forEach>
                     </tbody>
             </table>
              
         
    </body>
</html>
