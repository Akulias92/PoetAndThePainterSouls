package database;

import java.util.List;
import model.Category;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author lukak
 */
public class VratiKategorije {
    
    public static List<Category> vratiKategorije(){
        List<Category> kategorije = null;
        Session sesija = HibernateUtil.getSessionFactory().openSession();
        Transaction t = sesija.beginTransaction();
        Query q= sesija.createQuery("from Category");
        kategorije=q.list();
        t.commit();
        sesija.close();
        
        return kategorije;
    }
    
    
}
