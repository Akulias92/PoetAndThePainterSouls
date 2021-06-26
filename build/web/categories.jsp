<%-- 
    Document   : home
    Created on : Sep 16, 2019, 8:13:46 PM
    Author     : lukak
--%>




<%@page import="java.util.List"%>
<%@page import="model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--Pozivamo metodu vratiKategorije: ime paketa, ime klase, ime metode --%>
<% List<Category> kategorije = database.VratiKategorije.vratiKategorije();%>
<!DOCTYPE html>
<html>
    <div class="header">

    </div>

    <body>

        <%@include file="navbar.jsp" %> <br/><br/> <br/>
        <div id="kategorije_strana">
            <p>
                <%for (int i = 0; i < kategorije.size(); i++) {%> 
                <a href="items.jsp?category=<%=kategorije.get(i).getId()%>"id="kategorije">
                <%=kategorije.get(i).getName()%> </a><br/> </br>

                <% }%>

            </p>

        </div>


        <div class="foot">

        </div>
    </body>


</html>
