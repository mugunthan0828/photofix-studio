<%-- 
    Document   : change
    Created on : 7 Nov, 2020, 4:59:19 AM
    Author     : HOME
--%>

<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="javascript/jquery.bpopup.min.js" type="text/javascript"></script>
       <style>
html {
  height: 100%;
}
p{color: black;}
body {
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#141e30, #243b55);
   display: block;
    margin: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    margin-left: 0px;
}





#popup_this {
    top: 50%;
    left: 50%;
    text-align:center;
    margin-top: -50px;
    margin-left: -100px;
    position: fixed;
    background: buttonface;
    padding: 30px;
    border-radius: 5px;
    color:grey;
}




.check{
      transform:  scale(5);
      color: slateblue;
      padding-bottom: .5rem;
  
}
.btn{
    background-color: black;
    color:white;
}
.btn:hover{
    background-color: white;
    color:black;
}
        </style>
    </head>
     <body id="myPage" data-offset="60">
          <% String f = "user contact us quack";
           String f1="photographer and videographer booking";
           String f2= "98756575543 and 7988686568";
          String f3=" bngfh@gjh.com and ghhyj@gnhgf.com";
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
       
       
<div id="popup_this">
    
      <div class='check'>
          &#10003;</div>

  <p>
   changed Successfully 
  </p>
  
  <button type="button" class="btn" onclick="window.location.href='userhome.jsp?bgfnr=user+home+<%=hs3%>&zcsFc=<%=hs2%>&<%=hs%><%=hs1%>&email=${email}&<%=hs%>=<%=hs2%>&uname=${uname}&<%=hs1%>=<%=hs3%>&<%=hs3%>=<%=hs%>&ln=${ln}&sbdfB<%=hs1%>=sdbfdbd<%=hs%>&<%=hs2%>=<%=hs1%>&ph=${ph}&<%=hs3%>=<%=hs%><%=hs2%><%=hs3%>'">OK</button>

        

  <script>
      $( document ).ready(function() {
    $('#popup_this').bPopup();
});
    </script>
    </body>
</html>
