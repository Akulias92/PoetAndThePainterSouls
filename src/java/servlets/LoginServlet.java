package servlets;

import database.HibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author lukak
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();  
        String korisnicko = request.getParameter("user");
        String sifra = request.getParameter("pass");
        User u = new User(korisnicko, sifra);
        boolean isLogged = false;
        Session sesija = HibernateUtil.getSessionFactory().openSession();
        Transaction t = sesija.beginTransaction();
        /*HQL like SQL just Hibernate Structure Language */
        /*Obavezno koristis isti naziv promenljive iz modela(user.korisnicko i user.sifra)*/
        Query upit = sesija.createQuery("from User as user where user.korisnicko ='"+ korisnicko +"' and user.sifra = '"+ sifra +"'");
        
        if (upit.list().size() > 0) {
            isLogged = true;
        }
        t.commit();
        sesija.close();

        if (isLogged) {
            request.getSession().setAttribute("username", u.getKorisnicko());
            response.sendRedirect("admin.jsp");
            request.getSession().setAttribute("logged", true);

        } else {
            response.sendRedirect("login.jsp");
            request.getSession().setAttribute("logged", false);
        }

    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
