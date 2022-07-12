<%-- 
    Document   : booking
    Created on : Sep 24, 2020, 2:27:20 AM
    Author     : Suba
--%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
        <style>
            #en{
  visibility: hidden;
}
body{
color:white;
background-image:url("images/abstract.jpg");
width:100%;
height:100%;
display:overflow;
font-family: 'Noto Sans JP', sans-serif;

}

fieldset{
    background-color: whitesmoke;
    color:black;
    opacity:1;
    margin-left: 35%;
    margin-right: 35%;
  
    border:#000;
    border-radius:2%;
    text-align: left;
    
    
}
h2{text-align:center;
 background:black;
color:white;}
 input[type = submit] {
            background-color: grey;
            border: none;
            text-decoration: none;
            color: white;
            cursor: pointer;
           padding-left:1.5rem;
            padding-right:1.5rem;
           border-radius: 5px;
           padding-top: 0.5rem;
           padding-bottom: 0.5rem;
            }
            input[type = submit]:hover {
          background-color: black;
          color:white;
            }
            .navbar{
                background-color: black;
color :black;
            border-radius:2%;}
.navbar a {
    background: black;
  color:white;
  text-decoration: none;
  font-size: 20px;
  

}
        </style>
        <script>
            function visible(){
                document.getElementById("en").style.visibility = "visible";
                document.getElementById("b").checked = false;
                document.getElementById("w").checked = false;
                document.getElementById("f").checked = false;
                document.getElementById("bs").checked = false;
            }
             function hide(){
                document.getElementById("en").style.visibility = "hidden";
                document.getElementById("o").checked = false;
            }
        </script>
    </head>
    <body>
        <%
            String d=request.getParameter("d");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/photo","ash","ash@123");
            Statement st=con.createStatement();
            String selq="select * from clientdetails where email='"+d+"'";
            ResultSet rs;
            rs=st.executeQuery(selq);
            
            while(rs.next()){
                int id=rs.getInt(1);
                String cn=rs.getString("firstname");
            %>
        <form action="bookserve" >
            <input type="hidden" name="d" value="<%=d%>"/>
            <input type="hidden" name="cid" value="<%=id%>"/>
            <input type="hidden" name="cname" value="<%=cn%>"/>
             <%
                }
                %>
             <fieldset>
            <h2>BOOKING</h2>
            <h3> Event Name:</h3><ol style="text-align:left; margin-left:30%;margin-top:-10%;">
                <input type="radio" id="b" name="ename" value="birthday" onclick="hide()" > birthday<br>
                <input type="radio" id="w" name="ename" value="wedding" onclick="hide()"> wedding<br>
                <input type="radio" id="f" name="ename" value="fashion show" onclick="hide()"> fashion show<br>
                <input type="radio" id="bs" name="ename" value="baby shower" onclick="hide()">baby shower<br>
            <input type="radio" id="o" onclick="visible()">other
            <input type="text" id="en" name="ename" placeholder="eventname" ></ol>
            <h3>Date:</h3><ol>
                <input type="date" name="edate" placeholder="eventdate" required/></ol>
            <h3>Time:</h3><ol>
                <input type="time" name="etime" placeholder="eventtime" required/></ol>
            <h3>Location:</h3><ol>
                <input type="text" name="eloc" placeholder="event venue" required/></ol>
            <h3>Select Pack:</h3><ol style="text-align:left; margin-left:30%;margin-top:-10%;">  
                <input type="radio" name="pack" value="photographer" required/>Photographer<br>
            <input type="radio" name="pack" value="videographer"/>Videographer<br>
            <input type="radio" name="pack" value="both" />Photographer & Videographer
            </ol>
           <h3>Additional Services:</h3>  <ol style="text-align:left; margin-left:30%; margin-top:-5%;"> 
           <input type="checkbox" name="as" value="pre shooting"/>pre shooting<br>
           <input type="checkbox" name="as" value="live streaming"/>live streaming<br>
           <input type="checkbox" name="as" value="drone shooting" />drone shooting<br>
           <input type="checkbox" name="as" value="none" />none</ol>
            <h3>    Amount you have allocated: </h3>     <ol>
                <input type="text" id="price" name="eprice" placeholder="eventprice" required/></ol>
            <ol style="text-align:center; margin-right:20%; border-radius: 2%;">
                <input type="submit" value="submit"/></ol>
<div class="navbar">
     
        <% String f = "wedding and baby shower and birthday";
           String f1="photographer and videographer booking";
           String f2= "98756575543 7988686568";
          String f3=" bngfh@gjh.com and fashion show and others and ghhyj@gnhgf.com";
MessageDigest  crypt= MessageDigest.getInstance("MD5");
crypt.update(f.getBytes());
MessageDigest crypt2 = MessageDigest.getInstance("MD5");
crypt2.update(f1.getBytes());
MessageDigest crypt3 = MessageDigest.getInstance("MD5");
crypt3.update(f2.getBytes());
MessageDigest crypt4 = MessageDigest.getInstance("MD5");
crypt3.update(f3.getBytes());
byte[] c = crypt.digest();
byte[] c2 = crypt2.digest();
byte[] c3 = crypt3.digest();
byte[] c4 = crypt4.digest();

StringBuffer en = new StringBuffer();

for (int i = 0; i < c.length; i++) {
    f = Integer.toHexString(0xFF & c[i]);

    if (f.length() < 2) {
        f= "0" + f;
    }

    en.append(f);
}
String hs=en.toString();

StringBuffer en2 = new StringBuffer();

for (int i = 0; i < c2.length; i++) {
    f1 = Integer.toHexString(0xFF & c2[i]);

    if (f1.length() < 2) {
        f1= "0" + f1;
    }
;
    en2.append(f1);
}
String hs1=en2.toString();


StringBuffer en3 = new StringBuffer();

for (int i = 0; i < c3.length; i++) {
    f2 = Integer.toHexString(0xFF & c3[i]);

    if (f2.length() < 2) {
        f2= "0" + f2;
    }
;
    en3.append(f2);
}
String hs2=en3.toString();

StringBuffer en4 = new StringBuffer();

for (int i = 0; i < c4.length; i++) {
    f3 = Integer.toHexString(0xFF & c4[i]);

    if (f3.length() < 2) {
        f3= "0" + f3;
    }
;
    en4.append(f3);
}
String hs3=en4.toString();

            %>

            <% 
String uname=request.getParameter("uname");
String em=request.getParameter("email");
String ln=request.getParameter("ln");
String ph=request.getParameter("ph");
session.setAttribute("uname",uname); 
session.setAttribute("email",em);
session.setAttribute("ln",ln);
session.setAttribute("ph",ph);
%> 
<a href="userhome.jsp?sadcs4564=user+home+vcsvcd@<%=hs%>&email=<%=em%>&dgxb46uhrt=<%=hs1%>+<%=hs2%>&uname=<%=uname%>&vsdvr67f=<%=hs%>+<%=hs3%>&ln=<%=ln%>&asvsxgbvdf=<%=hs1%>+sfsf+<%=hs%>&ph=<%=ph%>&<%=hs1%><%=hs2%><%=hs3%>">Home</a>
  <a href="usercontact.jsp?vsdfb=<%=hs3%>@<%=hs%>&email=<%=request.getParameter("d")%>&cscv=<%=hs2%>@<%=hs1%>&bvs=<%=hs%>&uname=<%=request.getParameter("uname")%>&xvsv=<%=hs3%><%=hs2%>&ln=<%=request.getParameter("ln")%>&dn1=2<%=hs%><%=hs1%>&ph=<%=request.getParameter("ph")%>&<%=hs%><%=hs2%><%=hs3%><%=hs1%>" style="margin-left:65% ">Contact</a>
</div>
</fieldset>
        </form>
           
    </body>
</html>
