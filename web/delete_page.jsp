<%-- 
    Document   : home
    Created on : Sep 16, 2019, 8:13:46 PM
    Author     : lukak
--%>


<%@page import="model.Category"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    public List<Category> vratiKategorije() {
        List<Category> kategorije = null;
        Session sesija = HibernateUtil.getSessionFactory().openSession();
        Transaction t = sesija.beginTransaction();
        Query q = sesija.createQuery("from Category");
        kategorije = q.list();
        t.commit();
        sesija.close();

        return kategorije;

    }
%>
<!DOCTYPE html>
<%List<Category> kategorije = vratiKategorije();%>
<html>
    <div class="header">

    </div>
    <body>
        <%@include file="navbar.jsp" %> <br/><br/>

        <h2>Delete page</h2>

        <form action="CategoryServlet" method="POST"> 

            <select name="category">
                <%for (int i = 0; i < kategorije.size(); i++) {%>
                <option value="<%=kategorije.get(i).getId()%>" required> 
                    <%=kategorije.get(i).getName()%> </option>  
                    <%}%>
            </select>
            <pre> <input type="submit" value="Delete" name="action" id="adminSub" onmouseover="this.style.backgroundColor = 'burlywood';return true;"
                       onmouseout="this.style.backgroundColor = '';return true;"/></pre> 

      
        </form>

               <a href="admin2.jsp"><h4>Previous page</h4></a>
           
        <div class="foot">

        </div>
    </body>
</html>

