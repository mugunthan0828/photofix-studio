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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        
<script>
 $(document).ready(function() {
   $("#sort").DataTable({
      columnDefs : [
    { type : 'date', targets : [2] }
]
   });
});
</script>
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
        <a href="employeedetails.jsp">Add employeeinfo</a>
        
        <p style="text-align:center;">employee details</p>
    <center>
        <table id="sort" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>Employee No.</th>
                    <th>Employee ID</th>
                    <th>Employee Name</th>
                    <th>Employee Image</th>
                    <th>Address</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Designation</th>
                    <th>Date OF Birth</th>
                    <th>Date Of Join</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Status</th>
                    <th>Salary</th>
                    <th>Password</th>
                    <th></th>
                    <th></th>
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
                String edob=rs.getString("dateofbirth");
                String eg=rs.getString("gender");
                int eag=rs.getInt("age");
                String es=rs.getString("salary");
                String eps=rs.getString("password");
                String eid=rs.getString("employeeid");
                String edoj=rs.getString("dateofjoining");
                String est=rs.getString("status"); 
                out.println("<tr>");
                out.println("<td>"+eno+"</td>");
                out.println("<td>"+eid+"</td>");
                out.println("<td>"+en+"</td>");
                out.println("<td>"+"<img src="+"emimageservlet?id="+eno+" width='200px' height='200px'>"+"</img></td>");
                out.println("<td>"+ea+"</td>");
                out.println("<td>"+eph+"</td>");
                out.println("<td>"+eem+"</td>");
                out.println("<td>"+ed+"</td>");
                out.println("<td>"+edob+"</td>");
                out.println("<td>"+edoj+"</td>");
                out.println("<td>"+eg+"</td>");
                out.println("<td>"+eag+"</td>");
                out.println("<td>"+est+"</td>");
                out.println("<td>"+es+"</td>");
                out.println("<td>"+eps+"</td>");
                out.println("<td><a href='employeedelete?id="+eno+"'>delete</td>");
                out.println("<td><a href='editemploydetails.jsp?id="+eno+"'>edit</td>");
                out.println("</tr>");
            }
            
         %> 
         
         </tbody>
         </table>
         
 
    </center>
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
    </body>
</html>
