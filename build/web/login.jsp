<%-- 
    Document   : login
    Created on : Nov 22, 2019, 6:10:04 PM
    Author     : lukak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <div class="header">
        <%@include file="header.jsp" %>
    </div>

    <body> 
        <%@include file="navbar.jsp" %><br/><br/>
        <div id="log">

            <h1>Log in</h1> <br/>
            <form action="LoginServlet" method="POST" name="form2">

                <pre><input type="text" name="user" placeholder="Username" id="logUser" required/></pre>
                <pre><input type="password" name="pass" placeholder="Password" id="logPass" required/></pre><br/>
                
                <input type="submit" name="unos" value="Submit" id="logSubmit" onmouseover="this.style.backgroundColor='burlywood';return true;"
                       onmouseout="this.style.backgroundColor='';return true;"/>

            </form>

        </div>

        <div class="foot">

        </div>
    </body>

</html>
