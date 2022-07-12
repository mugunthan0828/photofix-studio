<%-- 
    Document   : assigneddetails
    Created on : 21 Feb, 2021, 2:15:23 AM
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
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
       
        <title>assigned details</title>
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
table.dataTable thead .sorting:after,
table.dataTable thead .sorting:before,
table.dataTable thead .sorting_asc:after,
table.dataTable thead .sorting_asc:before,
table.dataTable thead .sorting_asc_disabled:after,
table.dataTable thead .sorting_asc_disabled:before,
table.dataTable thead .sorting_desc:after,
table.dataTable thead .sorting_desc:before,
table.dataTable thead .sorting_desc_disabled:after,
table.dataTable thead .sorting_desc_disabled:before {
bottom: .5em;
}
        </style>
    </head>
    <body>
         <h2 style="text-align:center;font-family: 'Bebas Neue';font-size: 22px;">Assigned Details</h2>
        <button onclick="goBack()">Back To Dashboard </button><br><br>
       <sql:setDataSource var = "ds" driver = "org.apache.derby.jdbc.ClientDriver"
         url = "jdbc:derby://localhost:1527/photo"
         user = "ash"  password = "ash@123"/>
          <sql:query dataSource = "${ds}" var = "res">
              select * from workallocated
         </sql:query>
         
        <table id="sort" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
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
                 </tr>
                 </thead>
                 <tbody>
                 <c:forEach var = "row" items = "${res.rows}">
                   
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
                     </tr>
                 </c:forEach>
                 </tbody>
             </table>
           <script>
                  function goBack() {
  window.history.back();
}
 $(document).ready(function() {
   $("#sort").DataTable({
      columnDefs : [
    { type : 'date', targets : [3] }
]
   });
});

        </script>
     <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
         <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
    </body>
</html>

