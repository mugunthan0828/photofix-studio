<%-- 
    Document   : login
    Created on : Sep 20, 2020, 6:31:34 PM
    Author     : Suba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/btn.css" rel="stylesheet" type="text/css"/>
        <title>Login Page</title>
        <style>
            .viewport-header {
  position: relative;
  height: 100vh;
  text-align: right;
  display:block;
  align-items: right;
  
}
        </style>
        
    </head>
    <body>
        <video src="images/wedding/photobg.webm" autoplay loop playsinline muted></video>

       
     <form>
         <header class="viewport-header">
             <button class="button glow-button" type="submit" formaction="adlogin.jsp" style="margin-right:8%" >Admin login</button><hr>
              <button class="button glow-button" type="submit" formaction="elogin.jsp">Employee login</button>
             <button class="button glow-button" type="submit" formaction="ulogin.jsp" >User login</button></header>
        </form>
    
        
    </body>
</html>
