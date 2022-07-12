<%-- 
    Document   : assign
    Created on : 9 Nov, 2020, 5:55:55 AM
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
        <title>assign</title>
        <style>
            input{
                width:230px;
                border-radius:15px;
                height: 30px
            }
        </style>
    </head>
    <body>
        
 <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              select bookeddetails.*,clientdetails.PHONENUMBER,clientdetails.EMAIL from bookeddetails
INNER JOIN clientdetails
ON clientdetails.CLIENTID=bookeddetails.CLIENTID where eventno=<%= request.getParameter("no")%>
         </sql:query>
 <jsp:include page="employassignlist.jsp"/>
         <form action="assign">
             <div style="font-size:larger; font-weight:bold; font-style:oblique; padding-left: 40px; background-color:black; color:white;  width:500px; height:650px; margin-left: 400px; border:white 2px solid; border-radius:25px;">
            <c:forEach var = "row" items = "${res.rows}">
              <div style="padding-top:30px;">
                Employee Id:<input type="text" name="eid" required/><br><br>
                <input type="hidden" name="eno" value="${row.eventno}" />
             Client Name: <input type="text" name="cname" value="${row.clientname}" required/><br><br>
             Event Name:  <input type="text" name="ename" value="${row.eventname}" required/><br><br>
             Event Date:  <input type="date" name="edate" value="${row.eventdate}" required/><br><br>
             Event Time:  <input type="time" name="etime" value="${row.eventtime}" required/><br><br>
             Event venue:  <input type="text" name="eloc" value="${row.eventlocation}" required/><br><br>
             phone number: <input type="text" name="ph" value="${row.phonenumber}" required/><br><br>
             Client email: <input type="text" name="em" value="${row.email}" required/><br><br>
             <input type="hidden" name="cname" value="${row.eventno}" required/><br><br>
             <center><input type="submit" value="submit"/></center>
              </div>
            </c:forEach>
             </div>
            </form>
    </body>
</html>
