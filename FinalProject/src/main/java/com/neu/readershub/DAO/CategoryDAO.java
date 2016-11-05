package com.neu.readershub.DAO;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.neu.readershub.Exception.BookException;
import com.neu.readershub.pojo.Category;


public class CategoryDAO extends DAO {

    public Category get(String categoryName) throws BookException {
        try {
            begin();
            Query q=getSession().createQuery("from Category where categoryName= :categoryName");
            q.setString("categoryName",categoryName);
            Category category=(Category)q.uniqueResult();
            commit();
            return category;
        } catch (HibernateException e) {
            rollback();
            throw new BookException("Could not obtain the named category " + categoryName + " " + e.getMessage());
        }
    }

    public List list() throws BookException {
        try {
            begin();
            Query q = getSession().createQuery("from Category");
            List list = q.list();
            commit();
            return list;
        } catch (HibernateException e) {
            rollback();
            throw new BookException("Could not list the categories", e);
        }
    }

    public Category create(String categoryName) throws BookException {
        try {
            begin();
            Category cat = new Category(categoryName);
            getSession().save(cat);
            commit();
            return null;
        } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create the category", e);
            throw new BookException("Exception while creating category: " + e.getMessage());
        }
    }

    public void save(Category category) throws BookException {
        try {
            begin();
            getSession().update(category);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new BookException("Could not save the category", e);
        }
    }

    public void delete(Category category) throws BookException {
        try {
            begin();
            getSession().delete(category);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new BookException("Could not delete the category", e);
        }
    }
    
    public boolean exists(String categoryName)
   	{
   		
   		Query q=getSession().createQuery("from Category where categoryName= :categoryName");
   		q.setString("categoryName", categoryName);
   		
   		q.list();
   		if(q.iterate().hasNext())
   		{
   			return true;
   		}
   		return false;
   		
   	}
}