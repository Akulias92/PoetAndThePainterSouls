<%-- 
    Document   : admin
    Created on : Nov 22, 2019, 6:11:03 PM
    Author     : lukak
--%>

<%@page import="model.Category"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="database.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% boolean isLogged = false;
    try {
        String answer = request.getSession().getAttribute("logged").toString();
        if (answer.equals("true")) {
            isLogged = true;
        }

    } catch (NullPointerException n) {

        isLogged = false;
    }

%>

<% if (!isLogged) {

        response.sendRedirect("login.jsp");

    }%>

<!DOCTYPE html>

<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <div class="header">
        <%@include file="header.jsp" %>
    </div>

    <body>
        <%@include file="navbar.jsp" %> <br/> <br/>

        

            <form action="CategoryServlet" method="POST"> 
           
                <h2>1. Create page</h2>

                <pre><input type="text" name="category" placeholder="Enter author name" id="pageName" required /></pre>
                <pre> <input type="submit" value="NEXT" name="action" id="adminSub" onmouseover="this.style.backgroundColor = 'burlywood';return true;"
                       onmouseout="this.style.backgroundColor = '';return true;"/></pre>
                
            </form> 
           

       

    </div>
    <div class="foot">

    </div>
</body>

</html>