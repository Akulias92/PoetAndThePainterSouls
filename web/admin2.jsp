<%-- 
    Document   : home
    Created on : Sep 16, 2019, 8:13:46 PM
    Author     : lukak
--%>


<%@page import="model.Category"%>
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
              
       
                   <h2>2. Select page and give some info</h2> <br/>
            <form action="ItemServlet" method="POST"> 
                 Select page:
                 <pre> <select name="category">
                        <%for (int i = 0; i < kategorije.size(); i++) {%>
                <option value="<%=kategorije.get(i).getId()%>">
                            <%=kategorije.get(i).getName()%> </option>

                        <%}%>
            </select></pre>  <br/>

            Title: <pre><input type="text" name="title" placeholder="Title" id="pageName" /></pre>
            Author:<pre><input type="text" name="author" placeholder="Author" id="pageName" /></pre>
            Description:<pre><textarea name="descript" placeholder="Description" id="pageName" rows="5" cols="20"></textarea></pre>
            Date:<pre><input type="date" name="date" required id="dateBirth2"/></pre>

                 <input type="submit" name="Submit" value="NEXT" id="adminSub" onmouseover="this.style.backgroundColor = 'burlywood';return true;"
                       onmouseout="this.style.backgroundColor = '';return true;"/> 
                </form> 

            <a href="delete_page.jsp"><h4>Delete created page?</h4></a> 

      
          


     






        <div class="foot">

        </div>
    </body>
</html>