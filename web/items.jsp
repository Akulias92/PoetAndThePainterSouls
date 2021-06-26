<%-- 
    Document   : home
    Created on : Sep 16, 2019, 8:13:46 PM
    Author     : lukak
--%>


<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="database.HibernateUtil"%>
<%@page import="java.util.List"%>
<%@page import="model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int kategorija = Integer.parseInt(request.getParameter("category"));
    Session sesija = HibernateUtil.getSessionFactory().openSession();
    Transaction t = sesija.beginTransaction();
    Category c = (Category) sesija.get(Category.class, kategorija);
    t.commit();
    sesija.close();
%>
<!DOCTYPE html>
<html>
    <div class="header">

    </div>
    <body>
        <%@include file="navbar.jsp" %> <br/><br/>

        <h1><%=c.getName()%></h1>

        <%for (int i = 0; i < c.getItems().size(); i++) {%>

        Title: <%= c.getItems().get(i).getNaslov()%> <br/>
        Author: <%= c.getItems().get(i).getAutor()%>  <br/>
        Description: <%= c.getItems().get(i).getOpis()%> <br/>
        Date: <%= c.getItems().get(i).getDatum()%> <br/>
                 <br/>
        <%}%>

        <div class="foot">

        </div>
    </body>
</html>