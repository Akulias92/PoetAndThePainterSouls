<%-- 
    Document   : registration
    Created on : Nov 22, 2019, 6:08:52 PM
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

        <%@include file="navbar.jsp" %> <br/><br/>


        <div id="reg">

            <h1>Sign Up</h1><br/>


            <form action="RegistrationServlet"  method="POST" name="form1" >

                <pre><input type="text" name="ime" placeholder="Name" id="name" required /></pre> 
                <pre><input type="text" name="prezime" placeholder="Surname" id="surname" required /></pre>
                <pre><input type="email" name="email" placeholder="Email" id="email"required /></pre>
                <pre><input type="text" name="korisnicko" placeholder="Username" id="userReg"required/></pre>
                <pre><input type="password" name="password" placeholder="Password" id="pass" maxlength="10" required/></pre>
               
                Gender:
                Male <input type="radio" name="pol" value="male"/>
                Female <input type ="radio" name="pol" value="female"/> <br/> <br/> <br/>

                <input type="checkbox" name="saglasnost" required>Do you agree with the informations you have entered? <br/><br/>
                <input type="reset" value="Clear" name="clear" id="sub" onclick="return validate();" onmouseover="this.style.backgroundColor = 'burlywood';return true;" 
                       onmouseout="this.style.backgroundColor = '';return true;"/> 
                <input type="submit" name="unos" value="Submit" id="sub" onclick="return validate();" onmouseover="this.style.backgroundColor = 'burlywood';return true;" 
                       onmouseout="this.style.backgroundColor = '';return true;"/> 


            </form> 

        </div>


        <div class="foot">

        </div>

    </body>
</html>
