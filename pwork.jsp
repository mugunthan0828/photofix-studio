<%-- 
    Document   : pwork.jsp
    Created on : 9 Nov, 2020, 7:05:48 PM
    Author     : HOME
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>work</title>
        <style>
          input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input{
    background-color:#d0bdf4;
    color:#ff1d58;
    border-radius: 2%;
   
}
body {
    background-color:#00DDFF;
    color:#ff1d58;
    font-family: sans-serif;  
    
}
form{
  padding: 2%;
    border: solid #ff1d58;
    border-radius: 2em;
    width:30%;
   }
   .btn{
       color:#0049b7;
       background-color:#a28089;
       padding-left:1em;
       padding-right:1em;
       text-decoration: none;
       text-transform: uppercase;

   }
   h1{
       color:#8458b3;
       text-transform: uppercase;
   }
        </style>
    </head>
    <body>
        <% Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/photo","ash","ash@123");
            Statement st=con.createStatement();
            int eno=Integer.parseInt(request.getParameter("d"));
            String selq="select * from bookeddetails where eventno="+eno+" ";
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
            <div style="">
              <h2>event name:<%=en%></h2>
              <h2>date:<%=ed%></h2>
              <h2>time:<%=et%></h2>
              <h2>venue:<%=el%></h2>
            </div>
    <center>
        <h1>Photo Works</h1>
        <form action="imgservlet">
            <div class="input">
            <input name="mimg" type="file" placeholder="image1"/><br><br>
            <input name="simg" type="file" placeholder="image2"/><br><br>
            <input name="simg2" type="file" placeholder="image3"/><br>
            <input name="simg3" type="file" placeholder="image4"/><br><br>
            <input name="fimg" type="file" placeholder="image5"/><br><br>
           <input name="eid" type="hidden" value="<%= request.getParameter("d")%>"/>
            <input name="emid" type="hidden" value="<%= request.getParameter("id")%>"/>
            <input type="submit" value="submit"/>
            </div>
        </form>
    </center>
    </body>
</html>
