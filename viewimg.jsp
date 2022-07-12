<%-- 
    Document   : viewimg
    Created on : 8 Nov, 2020, 7:40:18 AM
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
        <title>view</title>
         <style>
           table,thead,td{
                border:5px solid brown;
                border-collapse: collapse;
                padding:10px;
                margin-left:1%;
                margin-right:1%;
                   align-content: center;
            }
                        table,thead,td {
    background: linear-gradient(-45deg,#8a2387,#e94057,#f27121);
    background-size: 400% 400%;
    animation: gradient 15s ease infinite;
    font-family: "Raleway", sans-serif;
}

@keyframes gradient {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}
            
        </style>
    </head>
    <body>
 <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              SELECT * from image where employeeid='<%= request.getParameter("ed")%>'
         </sql:query>
         <c:forEach var ="row" items = "${res.rows}">
             <table>
                 <tr>
                     
                     <td><img src="specialservlet?id=${row.id}" width='200px' height='200px'></img></td>
                     <td><img src="specialservlet1?id=${row.id}" width='200px' height='200px'></img></td>
                     <td><img src="specialservlet2?id=${row.id}" width='200px' height='200px'></img></td>
                     <td><img src="specialservlet3?id=${row.id}" width='200px' height='200px'></img></td>
                     <td><img src="specialservlet4?id=${row.id}" width='200px' height='200px'></img></td>
                 </tr>
             </table>
         </c:forEach>
    </body>
</html>
