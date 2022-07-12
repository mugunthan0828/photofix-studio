<%-- 
    Document   : currentwork
    Created on : 9 Nov, 2020, 4:57:47 PM
    Author     : HOME
--%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,javax.servlet.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>current work</title>
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
margin-left: 20%;


}
h1{text-align: center;
font-family: sans-serif;}
        </style>
    </head>
    <body>
        <button onclick="goBack()">Back To Dashboard </button><br><br>
        <h1>CURRENT WORK</h1>
      <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              SELECT * from workallocated where employeeid='<%=request.getParameter("id")%>' and (date='<%=request.getParameter("d1")%>' or date='<%=request.getParameter("d")%>')
         </sql:query>
    <center>
         <table>
             <thead>
             <tr>
                     <th>jno</th>
                     <th>event name</th>
                     <th>time</th>
                     <th>venue</th>
                     <th>client name</th>
                     <th>phone number</th>
                     <th>email</th>
                     <th>status</th>
                     <th></th>
             </tr>
             </thead>
             <tbody>
                      <c:forEach var = "row" items = "${res.rows}">
                          <tr>
                              <td>${row.jno}</td>
                              <td>${row.eventname}</td>
                              <td>${row.time}</td>
                              <td>${row.location}</td>
                              <td>${row.clientname}</td>
                              <td>${row.phonenumber}</td>
                              <td>${row.email}</td>
                              <td>${row.status}</td>
                              <td><a href='vwork.jsp?d=${row.id}'>your work</a></td>
                              <td><a href='editvideotable.jsp?no=${row.eventno}'>edit</a></td>
                          </tr>
                      </c:forEach>
             </tbody>
         </table>
    </center>
    </body>
</html>
