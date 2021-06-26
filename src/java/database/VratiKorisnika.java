/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.util.Iterator;
import java.util.List;
import model.Category;
import model.User;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;


/**
 *
 * @author lukak
 */
public class VratiKorisnika {

    public static User  getUser() {
         
        User user =null;
        
        Session sesija = HibernateUtil.getSessionFactory().openSession();
        Transaction t = sesija.beginTransaction();
        String sql = "select*from User order by user_id";
        Query q = sesija.createQuery(sql);
       
       
        t.commit();
        sesija.close();
        return user;
    }
}
