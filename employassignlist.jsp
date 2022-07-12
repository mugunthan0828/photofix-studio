<%-- 
    Document   : employee
    Created on : Sep 25, 2020, 12:16:42 PM
    Author     : Suba
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
        <title>employee</title>
        
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

        </style>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

    $(document).ready(function(){
  $("#s").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#tb tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
    $(document).ready(function(){
        $("#tabs").hide();
  $("#s").click(function(){
    $("#tabs").toggle();
  });
});
</script>
    </head>
    <body>        
        <input type="text" id="s" placeholder="Search">
    <center>
        <table id="tabs">
            <thead>
                <tr>
                    <th>Employee No.</th>
                    <th>Employee ID</th>
                    <th>Employee Name</th>
                    <th>Employee Image</th>
                    <th>Age</th>
                    <th>Address</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Designation</th>
                    <th>Status</th>
                </tr>
            </thead>
             <tbody id="tb">
        <%  Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/photo","ash","ash@123");
            Statement st=con.createStatement();
            String selq="select * from employeedetails order by employeename";
            ResultSet rs;
            rs=st.executeQuery(selq);
            while(rs.next()){
                int eno=rs.getInt(1);
                String en=rs.getString("employeename");
                String ea=rs.getString("employeeaddress");
                String eph=rs.getString("employeephonenumber");
                String eem=rs.getString("employeepersonalemail");
                String ed=rs.getString("designation");
                int eag=rs.getInt("age");
                String eid=rs.getString("employeeid");
                String est=rs.getString("status"); 
                out.println("<tr>");
                out.println("<td>"+eno+"</td>");
                out.println("<td>"+eid+"</td>");
                out.println("<td>"+en+"</td>");
                out.println("<td>"+"<img src="+"emimageservlet?id="+eno+" width='200px' height='200px'>"+"</img></td>");
                out.println("<td>"+eag+"</td>");
                out.println("<td>"+ea+"</td>");
                out.println("<td>"+eph+"</td>");
                out.println("<td>"+eem+"</td>");
                out.println("<td>"+ed+"</td>");
                out.println("<td>"+est+"</td>");
                out.println("<td><a href='employeedelete?id="+eno+"'>delete</td>");
                out.println("</tr>");
            }
            
         %> 
         
         </tbody>
         </table>
         
 
    </center>
    </body>
</html>
