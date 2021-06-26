<%-- 
    Document   : navbar
    Created on : Jul 7, 2019, 7:24:37 PM
    Author     : lukak
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="database.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% boolean logged = false;
    String odgovor;
    try {
        odgovor = request.getSession().getAttribute("logged").toString();
        if (odgovor.equals("true")) {
            logged = true;
        }
    } catch (NullPointerException e) {
        logged = false;

    }
%>
<%
     request.getSession().getAttribute("username");

%>

<%@include file="header.jsp" %>



<div class="nav">
    <ul>

        <li><a href="home.jsp">HOME</a></li>
        <li><a href="categories.jsp">CATEGORIES</a></li>
        <li><a href="poetry.jsp">POETRY</a></li>
        <li><a href="photo.jsp">PHOTOGRAPHY</a></li>
        <li><a href="admin.jsp">CREATE PAGE</a></li>

        <% if (!logged) {%>
        <li><a href="registration.jsp">SIGN UP</a></li>
            <%}%>
            <% if (!logged) {%>
        <li><a href="login.jsp">LOGIN</a></li>
            <% } else { %>

        <li><a href="userProfil.jsp" id="userNav">${username}</a></li>
         <li><a href="editProfil.jsp" id="editProfil">YOUR PROFILE</a></li>

        <%}%>



</div>
</ul>

