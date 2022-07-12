<%-- 
    Document   : bookingdetails
    Created on : Sep 26, 2020, 1:26:31 AM
    Author     : Suba
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <title>Booking Details</title>
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
            <p style="text-align:center;">Booking details</p>
    <center>
        <table id="sort" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>Event ID</th>
                    <th>Event Name</th>
                    <th>Event Date</th>
                    <th>Event Time</th>
                    <th>Event Location</th>
                    <th>Event Package</th>
                    <th>Additional service</th>
                    <th>Event Price</th>
                    <th>client Id</th>
                    <th>Client name</th>
                    <th></th>
                    <th></th>
                </tr>
        </thead>
  <tbody>
          <% Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/photo","ash","ash@123");
            Statement st=con.createStatement();
            String selq="select * from bookeddetails order by eventdate";
            ResultSet rs;
            rs=st.executeQuery(selq);
            while(rs.next()){
                 int eid=rs.getInt(1);
                 String en=rs.getString("eventname");
                 String ed=rs.getString("eventdate");
                 String et=rs.getString("eventtime");
                 String el=rs.getString("eventlocation");
                 String epack=rs.getString("eventpackage");
                 String ep=rs.getString("eventprice");
                 String cn=rs.getString("clientname");
                 int cid=rs.getInt("clientid");
                 String ser=rs.getString("additionalservice");
                 out.println("<tr>");
                 out.println("<td>"+eid+"</td>");
                 out.println("<td>"+en+"</td>");
                 out.println("<td>"+ed+"</td>");
                 out.println("<td>"+et+"</td>");
                 out.println("<td>"+el+"</td>");
                 out.println("<td>"+epack+"</td>");
                 out.println("<td>"+ser+"</td>");
                 out.println("<td>"+ep+"</td>");
                 out.println("<td>"+cid+"</td>");
                 out.println("<td>"+cn+"</td>");
                 
                 
                 out.println("<td><a href='editbookingdetails.jsp?id="+eid+"'>edit</a></td>");
                 out.println("<td><a href='bookdelserve?id="+eid+"'>delete</a></td>");
                 out.println("</tr>");
            }
            
            %>
            </tbody>
        </table>
             
 
    </center>
    <script>
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
