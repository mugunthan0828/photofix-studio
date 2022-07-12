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
         <h2 style="text-align:center;font-family: 'Bebas Neue';font-size: 22px;">Work Details</h2>
        <button onclick="goBack()">Back To Dashboard </button><br><br>
       <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              select workallocated.*,image.mainimg,image.sideimg1,image.sideimg2,image.sideimg3,image.finimg,image.id from workallocated INNER JOIN image ON image.eventno=workallocated.eventno
         </sql:query>
         
             <table>
                 <thead>
                 <tr>
                     <th>jno</th>
                     <th>employee Id</th>
                     <th>event name</th>
                     <th>date</th>
                     <th>time</th>
                     <th>venue</th>
                     <th>client name</th>
                     <th>phone number</th>
                     <th>email</th>
                     <th colspan="5">work</th>
                 </tr>
                 </thead>
                 <tbody>
                 <c:forEach var = "row" items = "${res.rows}">
                     <sql:query dataSource = "${ds}" var = "res1">
              select designation from employeedetails where employeeid='${row.employeeid}'
         </sql:query>
                 <c:forEach var = "row1" items = "${res1.rows}">
                     <c:if test="${row1.designation=='Photographer'}">

                 <tr>
                     <td>${row.jno}</td>
                     <td>${row.employeeid}</td>
                     <td>${row.eventname}</td>
                     <td>${row.date}</td>
                     <td>${row.time}</td>
                     <td>${row.location}</td>
                     <td>${row.clientname}</td>
                     <td>${row.phonenumber}</td>
                     <td>${row.email}</td>
                     
                     <td><img src="specialservlet?id=${row.id}" width='200px' height='200px'></img></td>
                     <td><img src="specialservlet1?id=${row.id}" width='200px' height='200px'></img></td>
                     <td><img src="specialservlet2?id=${row.id}" width='200px' height='200px'></img></td>
                     <td><img src="specialservlet3?id=${row.id}" width='200px' height='200px'></img></td>
                     <td><img src="specialservlet4?id=${row.id}" width='200px' height='200px'></img></td>
                 </tr>
                     </c:if>
                 </c:forEach>
                 </c:forEach>
                 </tbody>
             </table>
              <br>
              <br>
              
              <sql:query dataSource = "${ds}" var = "res1">
              select workallocated.*,video.v1,video.v2,video.v3,video.v4,video.v5,video.id from workallocated INNER JOIN video ON video.eventno=workallocated.eventno
         </sql:query>
              <br>
              <br>
             <table>
                 <thead>
                 <tr>
                     <th>jno</th>
                     <th>employee Id</th>
                     <th>event name</th>
                     <th>date</th>
                     <th>time</th>
                     <th>venue</th>
                     <th>client name</th>
                     <th>phone number</th>
                     <th>email</th>
                     <th colspan="5">work</th>
                 </tr>
                 </thead>
                 <c:forEach var = "row1" items = "${res1.rows}">
                     <sql:query dataSource = "${ds}" var = "res2">
              select designation from employeedetails where employeeid='${row1.employeeid}'
         </sql:query>
                 <c:forEach var = "row2" items = "${res2.rows}">
                     <c:if test="${row2.designation=='Videographer'}">
                 <tr>
                     <td>${row1.jno}</td>
                     <td>${row1.employeeid}</td>
                     <td>${row1.eventname}</td>
                     <td>${row1.date}</td>
                     <td>${row1.time}</td>
                     <td>${row1.location}</td>
                     <td>${row1.clientname}</td>
                     <td>${row1.phonenumber}</td>
                     <td>${row1.email}</td>
                     
                    <td><video width="200" height="200" controls>
                             <source src="vspecialservlet?id=${row1.id}" type="video/mp4">
                         </video></td>
                     <td><video width="200" height="200" controls>
                             <source src="vspecialservlet1?id=${row1.id}" type="video/mp4">
                         </video></td>
                    <td><video width="200" height="200" controls>
                            <source src="vspecialservlet2?id=${row1.id}" type="video/mp4">
                         </video></td> 
                    <td><video width="200" height="200" controls>
                            <source src="vspecialservlet3?id=${row1.id}" type="video/mp4">
                         </video></td>
                    <td><video width="200" height="200" controls>
                             <source src="vspecialservlet4?id=${row1.id}" type="video/mp4">
                         </video></td>  
                 </tr>
                     </c:if>
                 </c:forEach>
                 </c:forEach>
             </table>
           <script>
                  function goBack() {
  window.history.back();
}
              </script>
    </body>
</html>
