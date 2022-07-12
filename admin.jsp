<%-- 
    Document   : admin
    Created on : Sep 20, 2020, 6:50:02 PM
    Author     : Suba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
                
        <style>
            .topnav {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;

  padding: 15px 15px;
  text-decoration: none;
  font-size: 15px;
  border-radius: 2px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color:black;
  color: white;
}
body{
  
background-color:orange;
margin:0%;
}
</style>
        
    </head>
    <body>
         <h2 style="text-align: center;">Dashboard</h2>
        
        <div class="topnav">
        <div align="left">
        <a href="employee.jsp">Employee details</a>
        <a href="customerdetails.jsp">Customer details</a>
        <a href="bookingdetails.jsp">booking details</a>
        <a href="workallocation.jsp">Assign Work</a>
        <a href="feedbackdetails.jsp">feedback details</a>
        <a href="contactusdetails.jsp">contactus details</a>
        <a href="viewworkdetails.jsp">Work details</a></div>
        
        
        <a href="homepage.jsp" style="margin-left:23%">Logout</a>
        <p style="color:white;">Hi ${adname}</p>   
        </div>
            <hr>
            
            <jsp:include page="dashboard.jsp"/>
           
       
    </body>
    
</html>
