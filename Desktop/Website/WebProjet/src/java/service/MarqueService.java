/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.IDao;
import entities.Marque;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author NISRINE EL
 */
public class MarqueService implements IDao<Marque> {
    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



    @Override
    public boolean create(Marque o) {
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.save(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return false;
    }

   
    public Marque findById(int id) {
        Marque marque = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            marque = (Marque) session.get(Marque.class, id);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return marque;
    }

    @Override
    public boolean update(Marque o) {
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.update(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            tx.rollback();
        } finally {
            session.close();
        }
        return false;
    }

    @Override
    public boolean delete(Marque o) {
        Session session = null;
        Transaction tx = null;
        try {

            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.delete(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            tx.rollback();
        } finally {
            session.close();
        }
        return false;
    }

    @Override
    public List<Marque> findAll() {
        List<Marque> marques = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            marques = session.createQuery("from Marque").list();
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return marques;
    }

 public Marque findByNom(String nom) {
        Session session = null;
        Transaction tx = null;
          Marque marque = null;
        
       
      
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            Query a=session.createQuery("from Marque where nom= ?");
            a.setString(0,nom);
            marque = (Marque)a.uniqueResult();
            tx.commit();
                    
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
          
                session.close();
            
        }
        
        return marque;

    }
   
}


