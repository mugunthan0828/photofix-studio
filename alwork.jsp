<%-- 
    Document   : allwork
    Created on : 9 Nov, 2020, 5:57:44 PM
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
        <script>
            function goBack() {
  window.history.back();
}
            </script>
        <style>
            table,thead,td{
                border:1px solid black;
                border-collapse: collapse;
                padding:25px;
            }
            body{ 
                background-color: #FBAB7E;
background-image: linear-gradient(62deg, #FBAB7E 0%, #F7CE68 100%);
font-family: 'Bebas Neue';font-size: 17px;
}
th{
padding: 10px;
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
margin-left: 5%;


}
h1{text-align: center;
font-family: sans-serif;}
        </style>

    </head>
    <body>
        <button onclick="goBack()">Back To Dashboard </button><br><br>
        <h1>All Works</h1>
        
        <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              SELECT * from workallocated order by status desc

         </sql:query>
         <center>
         <table>
             <thead>
                 <tr>
                     <th>jno</th>
                     <th>event name</th>
                     <th>date</th>
                     <th>time</th>
                     <th>venue</th>
                     <th>client name</th>
                     <th>phone number</th>
                     <th>email</th>
                 <tr>
             </thead>
             <tbody>
                      <c:forEach var = "row" items = "${res.rows}">
                          <tr>
                              <td>${row.jno}</td>
                              <td>${row.eventname}</td>
                              <td>${row.date}</td>
                              <td>${row.time}</td>
                              <td>${row.location}</td>
                              <td>${row.clientname}</td>
                              <td>${row.phonenumber}</td>
                              <td>${row.email}</td>
                              <td>${row.status}</td>
                          </tr>
                      </c:forEach>
             </tbody>
         </table>
         </center>
    </body>
</html>
