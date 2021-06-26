<%-- 
    Document   : setUserBean
    Created on : May 9, 2020, 10:37:08 AM
    Author     : lukak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="user" scope="session" class= "model.User"></jsp:useBean>
        
    </body>
</html>
