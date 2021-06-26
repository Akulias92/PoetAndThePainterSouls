<%-- 
    Document   : home
    Created on : Sep 16, 2019, 8:13:46 PM
    Author     : lukak
--%>


<%@page import="java.util.Locale"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    }

%>

<!DOCTYPE html>
<html>
    <div class="header">

    </div>
    <body>
        <%@include file="navbar.jsp" %> <br/><br/>

        <div class="uProfil">
        <h1>Welcome ${username}</h1>

        <form action="UserProfilServlet" method="POST" >

            Profile name:
            <pre><input type="text" name="profilName" id="profilName"/></pre>

            Country:
            <pre><select name="userCountry" id="userCountry">

                    <% String[] zemlje = Locale.getISOCountries(); %>
                    <%for (int i = 0; i < zemlje.length; i++) { %>
                    <option value="<%String zemlja = zemlje[i];
                        Locale l = new Locale("en", zemlja); %>
                            <% String imeZemlje = l.getDisplayCountry();%>"> 
                            <%=imeZemlje%>
                    </option> 
                    <%}%>

                </select></pre>

            City:
            <pre> <input type="text" name="userCity" id="userCity"/></pre>

            Date of birth:<pre><input type="date" name="date" id="dateBirth" required/></pre>

            About me:
            <pre> <textarea name="textArea" rows="4" cols="23"></textarea></pre><br/>
                
                <input type="submit" name="Submit" value="SAVE" id="adminSub" onmouseover="this.style.backgroundColor = 'burlywood';return true;"
                       onmouseout="this.style.backgroundColor = '';return true;"/> 
                
                
            </form>

           
        </div>

        <div class="foot">

        </div>
    </body>
</html>
