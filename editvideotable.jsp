<%-- 
    Document   : editvideotable
    Created on : 30 Dec, 2020, 7:52:52 PM
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
        <title>JSP Page</title>
         <style>
            body{
                 background-color: #1A1A1D;
                 color:whitesmoke;
             }
           table,thead,td{
                border:5px solid orangered;
                border-collapse: collapse;
                padding:10px;
                margin-left:1%;
                margin-right:1%;
                   align-content: center;
            }
            a {
  background-color: orangered;
  color: white;
  padding: 0.5em;
  text-decoration: none;
  text-transform: uppercase;
}

a:hover {
  background-color: #555;
}




                        table,thead,td {
    background: linear-gradient(-45deg,#6F2232,#950740,#C3073F);
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
         <% Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/photo","ash","ash@123");
            Statement st=con.createStatement();
            int eno=Integer.parseInt(request.getParameter("no"));
            String selq="select * from bookeddetails where eventno="+eno+"";
            ResultSet rs;
            rs=st.executeQuery(selq);
            String en="",ed="",et="",el="";
            while(rs.next()){
                 en=rs.getString("eventname");
                 ed=rs.getString("eventdate");
                 et=rs.getString("eventtime");
                 el=rs.getString("eventlocation");
            }
            %>
            
              <h2>event name:<%=en%></h2>
              <h2>date:<%=ed%></h2>
              <h2>time:<%=et%></h2>
              <h2>venue:<%=el%></h2>
          <sql:query dataSource = "${ds}" var = "res">
              SELECT * from video where eventno=<%= request.getParameter("no")%>
         </sql:query>
         <c:forEach var = "row" items = "${res.rows}">
               <table>
                 <tr>
                     
                     <td><video width="200" height="200" controls>
                             <source src="vspecialservlet?id=${row.id}" type="video/mp4">
                         </video>
                         <a href='editvideo.jsp?no=<%= request.getParameter("no")%>'>edit</a>
                     </td>
                     <td><video width="200" height="200" controls>
                             <source src="vspecialservlet1?id=${row.id}" type="video/mp4">
                         </video>
                         <a href='editvideo1.jsp?no=<%= request.getParameter("no")%>'>edit</a>
                     </td>
                    <td><video width="200" height="200" controls>
                            <source src="vspecialservlet2?id=${row.id}" type="video/mp4">
                         </video>
                         <a href='editvideo2.jsp?no=<%= request.getParameter("no")%>'>edit</a>
                    </td> 
                    <td><video width="200" height="200" controls>
                            <source src="vspecialservlet3?id=${row.id}" type="video/mp4">
                         </video>
                         <a href='editvideo3.jsp?no=<%= request.getParameter("no")%>'>edit</a>
                    </td>
                    <td><video width="200" height="200" controls>
                             <source src="vspecialservlet4?id=${row.id}" type="video/mp4">
                         </video>
                    <a href='editvideo4.jsp?no=<%= request.getParameter("no")%>'>edit</a>
                    </td>            
                 </tr>
             </table>
         </c:forEach>
    </body>
</html>
