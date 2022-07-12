<%-- 
    Document   : editimage1
    Created on : 10 Nov, 2020, 10:42:43 PM
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
            body{
                 background-image: url("images/google.png");
              
     padding:0;
    width:auto;
    height:auto;
     }
            .circle{
              width:500px;
              height:150px;
             background-color: white;
              margin:10% auto;
              border-radius: 10%;
              position:relative;
            }
            .content{
                position: absolute;
                width: inherit;
                height: auto;
                top:50%;
                transform: translateY(-50%);
                text-align: center;
                font-family: cursive;
               
                
            }

.cent{
    text-align: center;
    font-size: 25px;
    font-family:monospace;
    padding-top: 3%;
    color: white;
    background-color: blueviolet;
    border-radius: 2rem;
}
            </style>
    </head>
    <body>
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
            <div class="cent">
              <h2>event name:<%=en%></h2>
              <h2>date:<%=ed%></h2>
              <h2>time:<%=et%></h2>
              <h2>venue:<%=el%></h2>
            </div>
             <div class="circle">
                   <div class="content">
<form action="editimage2">
           <input name="no" type="hidden" value="<%=request.getParameter("no")%>"/>    
            <input name="simg" type="file" placeholder="image1"/>
            <br><br>
            <input type="submit" style="border-radius:20px; width: 150px; height: 45px; background-color:#EE4C7C; color: white; border:yellow 1px solid; font-size:xx-large; font-style:oblique;   " value="Edit"/>
            
</form>
                   </div>
            </div>
    </body>
</html>
