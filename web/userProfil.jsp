<%-- 
    Document   : userProfil
    Created on : Apr 21, 2020, 5:58:57 PM
    Author     : lukak
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.security.Principal"%>
<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="model.User"%>
<%@page import="java.util.Locale"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <div class="header">
        <%@include file="header.jsp" %>
    </div>

    <body>
        <%@include file="navbar.jsp" %> <br/>
        
        
        <div class="uProfil"><br/>
          
            <h2>USER ${username}</h2>
            <hr> <br/>
            <pre>Username:${username}</pre>
            <pre></pre>
            <pre></pre>
            <pre></pre> <br/>




            <a href="LogoutServlet"id="LogOut"><h3>Logout</h3></a> <br/><br/>
        </div>








        <div class="foot">

        </div>

    </body>

</html>
