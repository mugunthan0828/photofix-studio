<%-- 
    Document   : editemploydetails
    Created on : 21 Feb, 2021, 3:09:45 AM
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
        <title>edit</title>
              
        <style>
html {
  height: 100%;
}
h3{color: silver;}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient( #2a1b3d,#44318D,#8264aa);
}

.em-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.em-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.em-box .employ-box {
  position: relative;
}

.em-box .employ-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.em-box .employ-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.em-box .employ-box input:focus ~ label,
.em-box .employ-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}
   .button {
  width: 150px;
  text-align: center;
  color: #000;
  text-transform: uppercase;
  font-weight: 600;
  margin-left: 30px;
  margin-bottom: 30px;
  cursor: pointer;
  display: inline-block;
    padding: 20px;
  border-radius: 2em;
}

.button-2 {
  color: #fff;
  border: 3px solid #410056;
  background-image: -webkit-linear-gradient(30deg, #d83f87 50%, transparent 50%);
  background-image: linear-gradient(30deg, #d83f87 50%, transparent 50%);
  background-size: 500px;
  background-repeat: repeat;
  background-position: 0%;
  -webkit-transition: background 300ms ease-in-out;
  transition: background 300ms ease-in-out;
}
.button-2:hover {
    border: 3px solid #EE4C7C;
  background-position: 100%;
  background-color: black;
  color: #9A1750;
}
        </style>
     
    </head>
    <body>
                   
        <div class="em-box">
             <h2>Edit Employee Details </h2>
            
    

         <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              SELECT * from employeedetails where employeeno=<%= request.getParameter("id")%>
         </sql:query>

                  
             <c:forEach var = "row" items = "${res.rows}">
        <form action="editemploydetails">
             <input type="hidden" name="id" value="${row.employeeno}">
             <div class="employ-box">
            <input type="text" name="ed" value="${row.employeeid}"/>
             <label>Employee ID</label>
             </div>
             <div class="employ-box">
            <input type="text" id="des" name="edesignation" value="${row.designation}"/>
            <label>Employee Designation</label>
             </div>
             <div class="employ-box">
            <input type="date" id="doj" name="edj" value="${row.dateofjoining}"/>
            <label>Employee Date Of Joining</label>
             </div>
             <div class="employ-box">
            <input type="text" id="st" name="est" value="${row.status}"/>
            <label>Employee Status</label>
             </div>
        <div class="employ-box">
            <input type="text" name="esal" value="${row.salary}"/>
             <label>Employee Salary</label>
        </div>
        <center><input type="submit" class="button button-2" value="save"></center>
        </c:forEach>
        </form>  
        </div>
    </body>
</html>
