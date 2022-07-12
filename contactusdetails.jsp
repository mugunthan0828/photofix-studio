<%-- 
    Document   : contactusdetails
    Created on : 6 Nov, 2020, 2:07:02 PM
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
        <title>Contact us</title>
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
        <p style="text-align:center;">Contact Us details</p>
        <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              SELECT * from contactus
         </sql:query>
    <center>
                <table id="sort" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                 <thead>
                     <tr>
                         <th>cno.</th>
                         <th>Name</th>
                         <th>Email</th>
                         <th>Details</th>
                     </tr>
                     </thead>
                 <tbody>
            <c:forEach var = "row" items = "${res.rows}">
                <tr>
                   <td><c:out value="${row.cno}"/></td> 
                   <td><c:out value="${row.name}"/></td>
                   <td><c:out value="${row.email}"/></td>
                   <td><c:out value="${row.details}"/></td>
                   <td><a href="contactusdelete?no=${row.cno}">delete</a></td>
                </tr>
            </c:forEach>
                </tbody>
             </table>
    </center>
    </body>
</html>
