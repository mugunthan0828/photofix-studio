<%-- 
    Document   : feedbackdetails
    Created on : 6 Nov, 2020, 3:41:19 AM
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
        <title>feedback details</title>
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
        <p style="text-align:center;">Feedback details</p>
         <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              SELECT * from feedback
         </sql:query>
    <center>
        <table id="sort" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                 <thead>
                     <tr>
                         <th>Fno.</th>
                         <th>Name</th>
                         <th>Email</th>
                         <th>How did you find out about us</th>
                         <th>How would you rate our service</th>
                         <th>What would you like us to improve on</th>
                         <th>Would you suggest us to a friend</th>
                     </tr>
                 </thead>
                 <tbody
            <c:forEach var = "row" items = "${res.rows}">
                <tr>
                   <td><c:out value="${row.feedbackno}"/></td> 
                   <td><c:out value="${row.name}"/></td>
                   <td><c:out value="${row.email}"/></td>
                   <td><c:out value="${row.findus}"/></td>
                   <td><c:out value="${row.servicerate}"/></td>
                   <td><c:out value="${row.improvement}"/></td>
                   <td><c:out value="${row.recommendus}"/></td>
                   <td><a href="feedbackdelete?no=${row.feedbackno}">delete</a></td>
                </tr>
            </c:forEach>
                </tbody>
             </table>
    </center>
    </body>
</html>
